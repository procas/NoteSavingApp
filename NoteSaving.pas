unit NoteSaving;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    LoadNoteButton: TButton;
    Panel1: TPanel;
    SaveNoteButton: TButton;
    LoadNoteEd: TEdit;
    TitleEd: TEdit;
    Label1: TLabel;
    ContentEd: TEdit;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Edit4: TEdit;
    PriceEd: TEdit;
    Label4: TLabel;
    Image1: TImage;
    TotalNotesButton: TButton;
    TotalNotesEd: TEdit;
    FilePosLabel: TLabel;
    SaveChangesButton: TButton;
    Memo1: TMemo;
    Button1: TButton;
    procedure SaveNoteButtonClick(Sender: TObject);
    procedure SaveNoteRec(saveAsNew : boolean);
    procedure SaveChangesButtonClick(Sender: TObject);
    procedure LoadNoteButtonClick(Sender: TObject);
    procedure TotalNotesButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
Str50 = string[50];
Str255 = string[255];
Str20 = string[20];
Note = record
  title: Str50;
  content: Str255;
  date: TDateTime;
  price: double;
end;

var
  Form1: TForm1;
  noteFile: File of Note;
  notePos: integer;

const NOTE_FILE_NAME = 'MyNotes.dat';

implementation

{$R *.dfm}

procedure TForm1.SaveNoteRec (saveAsNew : boolean);
var
  aNote: Note;
begin
     AssignFile(noteFile, NOTE_FILE_NAME);
     if not FileExists(NOTE_FILE_NAME) then
        Rewrite(noteFile)
     else
        Reset(noteFile);
     begin
       aNote.title := TitleEd.Text;
       aNote.content := ContentEd.Text;
       aNote.date := DateTimePicker1.DateTime;
       aNote.price := StrToFloat(PriceEd.Text);
       if saveAsNew then
       begin
         Seek(noteFile, System.FileSize(noteFile));   {seek end of file}
         notePos := FilePos(noteFile);
         FilePosLabel.Caption := IntToStr(notePos);
       end
       else
          Seek(noteFile, notePos);  {seek current location}
       Write(noteFile, aNote);
       CloseFile(noteFile);
     end;
       {
          AssignFile(<File variable>, <File name>);
          Reset(<File variable>);
          Seek(<File variable>, <Record>);
          Write(<File variable>, <Record>);
          CloseFile(<File variable>);
       }
end;

procedure TForm1.TotalNotesButtonClick(Sender: TObject);
begin
    AssignFile(noteFile, NOTE_FILE_NAME);
    Reset(noteFile);
    {the above two steps are equivalent to opening a File}
    TotalNotesEd.Text := IntToStr(System.FileSize(noteFile));
end;

procedure ShowNote(aNote : Note);
begin
     Form1.TitleEd.Text := aNote.title;
     Form1.ContentEd.Text := aNote.content;
     Form1.DateTimePicker1.DateTime := aNote.date;
     Form1.PriceEd.Text := FloatToStr(aNote.price);
end;


procedure TForm1.LoadNoteButtonClick(Sender: TObject);
var aNote: Note;
begin
    var num := StrToInt(LoadNoteEd.Text);
    if not FileExists(NOTE_FILE_NAME) then
    ShowMessage('Record number '+LoadNoteEd.Text +' not found!')
    else
    begin
      AssignFile(noteFile, NOTE_FILE_NAME);
      Reset(noteFile);
      Seek(noteFile, num);
      notePos := FilePos(noteFile);
      Read(noteFile, aNote);
      ShowNote(aNote);
    end;
    CloseFile(noteFile);
    FilePosLabel.Caption := LoadNoteEd.Text ;
    ShowMessage('Note number '+LoadNoteEd.Text+' has been loaded successfully' );

end;

procedure TForm1.SaveChangesButtonClick(Sender: TObject);
begin
     SaveNoteRec(false);
     ShowMessage('Note updated 🗒!');
end;

procedure TForm1.SaveNoteButtonClick(Sender: TObject);
begin
    SaveNoteRec(true);
    ShowMessage('Note saved 📒!');
end;


{class and objects concepts}

type
NoteObj = class
  title : Str50;
  content : Str255;
  date : TDateTime;
  price : double
end;

const
  ARRAYSIZE = 5;
type
  StrArray = array[1..ARRAYSIZE] of Str50;
  DbArray = array[1..ARRAYSIZE] of double;
  //DateArray = array[1..ARRAYSIZE] of TDateTime;
  LongStrArray = array[1..ARRAYSIZE] of Str255;

const
  TITLEARRAY : StrArray = ('Title-1', 'Title-2', 'Title-3', 'Title-4', 'Title-5');
  CONTENTARRAY : LongStrArray = ('Content-1', 'Content-2', 'Content-3', 'Content-4', 'Content-1');
//  DATEARR : DateArray = (new EncodeDate(2022, 11, 3), ...)
  PRICEARRAY : DbArray = (10.0, 2.0, 1.1, 80, 7.6);

var
  obArray : array[1..ARRAYSIZE] of NoteObj;


procedure TForm1.FormCreate(Sender: TObject);
var
  DateArray : array[1..ARRAYSIZE] of TDateTime;
  I, J : integer;
  note : NoteObj;
begin
  for I := 1 to 5 do
  begin
    DateArray[I] := EncodeDate(2022, I, I+2);
  end;
   for J := 1 to 5 do
   begin
    note := NoteObj.Create;
    note.title := TITLEARRAY[J];
    note.content := CONTENTARRAY[J];
    note.date := DateArray[J];
    note.price := PRICEARRAY[J];
    obArray[J] := note;
   end
end;

procedure TForm1.Button1Click(Sender: TObject);
var
      I : integer;
      note : NoteObj;
begin
     for I := 1 to ARRAYSIZE do
     begin
       note := obArray[I];
       Memo1.Lines.Add('['+IntToStr(I)+']'+note.title+','+note.content+','+DateToStr(note.date)+','+FloatToStr(note.price));
     end;

end;

end.
