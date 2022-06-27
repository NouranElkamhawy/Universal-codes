function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.

% end
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 23-May-2022 20:38:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function EnteredEncodedText_Callback(hObject, eventdata, handles)
% hObject    handle to EnteredEncodedText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EnteredEncodedText as text
%        str2double(get(hObject,'String')) returns contents of EnteredEncodedText as a double


% --- Executes during object creation, after setting all properties.
function EnteredEncodedText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EnteredEncodedText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EncodedTextOut_Callback(hObject, eventdata, handles)
% hObject    handle to EncodedTextOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
scroll(textArea, 'bottom');
% Hints: get(hObject,'String') returns contents of EncodedTextOut as text
%        str2double(get(hObject,'String')) returns contents of EncodedTextOut as a double


% --- Executes during object creation, after setting all properties.
function EncodedTextOut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EncodedTextOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Efficiency_Callback(hObject, eventdata, handles)
% hObject    handle to Efficiency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Efficiency as text
%        str2double(get(hObject,'String')) returns contents of Efficiency as a double


% --- Executes during object creation, after setting all properties.
function Efficiency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Efficiency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EnteredDecodedText_Callback(hObject, eventdata, handles)
% hObject    handle to EnteredDecodedText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EnteredDecodedText as text
%        str2double(get(hObject,'String')) returns contents of EnteredDecodedText as a double


% --- Executes during object creation, after setting all properties.
function EnteredDecodedText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EnteredDecodedText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EncodedText_Callback(hObject, eventdata, handles)
% hObject    handle to EncodedText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EncodedText as text
%        str2double(get(hObject,'String')) returns contents of EncodedText as a double


% --- Executes during object creation, after setting all properties.
function EncodedText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EncodedText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Encoder.
function Encoder_Callback(hObject, eventdata, handles)
% hObject    handle to Encoder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Encoder


% --- Executes on button press in Decoder.
function Decoder_Callback(hObject, eventdata, handles)
% hObject    handle to Decoder (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Decoder


% --- Executes on button press in Run.
function Run_Callback(hObject, eventdata, handles)
 EncodeText=get(handles.EnteredEncodedText,'String')
 disp(EncodeText)
 unique1=unique(EncodeText);
 DecodeText=get(handles.EnteredDecodedText,'String');
 length(EncodeText)
 NoOfSymbols=get(handles.NoOfSymbols,'String');
 NoOfSymbols=str2num(NoOfSymbols)
EnteredDecodedText1=get(handles.EnteredDecodedText,'String')

% get(handles.radiobutton1,'Value') == 0 
if(get(handles.Encoder,'Value')==1 && get(handles.LempelZiv,'Value')==1 && get(handles.ABC,'Value')==1)
 EncodeText=get(handles.EnteredEncodedText,'String');
 EncodeText=char(EncodeText);
 [output,eff]=Lempel_Ziv_ABC(EncodeText);
 output=char(output);
 set(handles.EncodedTextOut,'String',string(output));
 set(handles.Efficiency,'String',string(eff));
elseif(get(handles.Encoder,'Value')==1 && get(handles.LempelZiv,'Value')==1 && get(handles.Alphabet,'Value')==1)
 [output,eff]=Lempel_Ziv_Alphapet(EncodeText);
 output=char(output);
 set(handles.EncodedTextOut,'String',string(output));
set(handles.Efficiency,'String',string(eff));

elseif(get(handles.Decoder,'Value')==1 && get(handles.LempelZiv,'Value')==1 && get(handles.ABC,'Value')==1)
 [output]=Lempel_Ziv_Decode_ABC(EnteredDecodedText1);
 output=char(output);
 set(handles.EncodedText,'String',string(output));


elseif(get(handles.Decoder,'Value')==1 && get(handles.LempelZiv,'Value')==1 && get(handles.Alphabet,'Value')==1)

elseif(get(handles.Encoder,'Value')==1 && get(handles.AdaptiveArithematic,'Value')==1 && get(handles.ABC,'Value')==1)
 [output,eff]=adaptiveArithmeticEnco(EncodeText);
 set(handles.EncodedTextOut,'String',string(output)); %------------------------------------%
 set(handles.Efficiency,'String',string(eff));



elseif(get(handles.Encoder,'Value')==1 && get(handles.AdaptiveArithematic,'Value')==1 && get(handles.Alphabet,'Value')==1)
 [output,eff]=adaptiveArithmeticEnco(EncodeText);
 set(handles.EncodedTextOut,'String',string(output));
 set(handles.Efficiency,'String',string(eff));




elseif(get(handles.Decoder,'Value')==1 && get(handles.AdaptiveArithematic,'Value')==1 && get(handles.ABC,'Value')==1)
[seq]=adaptiveArithmeticDeco(DecodeText,unique1,NoOfSymbols);
set(handles.EncodedText,'String',char(seq));
set(handles.Unique,'String',unique1);



elseif(get(handles.Decoder,'Value')==1 && get(handles.AdaptiveArithematic,'Value')==1 && get(handles.Alphabet,'Value')==1)
[seq]=adaptiveArithmeticDeco(DecodeText,unique1,NoOfSymbols);
set(handles.EncodedText,'String',char(seq));
set(handles.Unique,'String',unique1);
end
% hObject    handle to Run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function NoOfSymbols_Callback(hObject, eventdata, handles)
% hObject    handle to NoOfSymbols (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NoOfSymbols as text
%        str2double(get(hObject,'String')) returns contents of NoOfSymbols as a double


% --- Executes during object creation, after setting all properties.
function NoOfSymbols_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NoOfSymbols (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to Unique (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Unique as text
%        str2double(get(hObject,'String')) returns contents of Unique as a double


% --- Executes during object creation, after setting all properties.
function Unique_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Unique (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
