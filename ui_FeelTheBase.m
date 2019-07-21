function varargout = ui_FeelTheBase(varargin)
% UI_FEELTHEBASE MATLAB code for ui_FeelTheBase.fig
%      UI_FEELTHEBASE, by itself, creates a new UI_FEELTHEBASE or raises the existing
%      singleton*.
%
%      H = UI_FEELTHEBASE returns the handle to a new UI_FEELTHEBASE or the handle to
%      the existing singleton*.
%
%      UI_FEELTHEBASE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI_FEELTHEBASE.M with the given input arguments.
%
%      UI_FEELTHEBASE('Property','Value',...) creates a new UI_FEELTHEBASE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ui_FeelTheBase_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ui_FeelTheBase_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ui_FeelTheBase

% Last Modified by GUIDE v2.5 18-Mar-2019 14:20:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ui_FeelTheBase_OpeningFcn, ...
                   'gui_OutputFcn',  @ui_FeelTheBase_OutputFcn, ...
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


% --- Executes just before ui_FeelTheBase is made visible.
function ui_FeelTheBase_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ui_FeelTheBase (see VARARGIN)

% Choose default command line output for ui_FeelTheBase
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ui_FeelTheBase wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ui_FeelTheBase_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in original.
function original_Callback(hObject, eventdata, handles)
% hObject    handle to original (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns original contents as cell array
%        contents{get(hObject,'Value')} returns selected item from original
val=get(hObject,'value');%获取数值
switch val
    case 1
        status1=3;
    case 2
        status1=1;
    case 3
        status1=2;
    case 4
        status1=3;
    case 5
        status1=4;
end
handles.status1=status1;
guidata(hObject,handles);     


% --- Executes during object creation, after setting all properties.
function original_CreateFcn(hObject, eventdata, handles)
% hObject    handle to original (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in converted.
function converted_Callback(hObject, eventdata, handles)
% hObject    handle to converted (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns converted contents as cell array
%        contents{get(hObject,'Value')} returns selected item from converted
val=get(hObject,'value');%获取数值
switch val
    case 1
        status2=3;
    case 2
        status2=1;
    case 3
        status2=2;
    case 4
        status2=3;
    case 5
        status2=4;
end
handles.status2=status2;
guidata(hObject,handles);  

% --- Executes during object creation, after setting all properties.
function converted_CreateFcn(hObject, eventdata, handles)
% hObject    handle to converted (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input as text
%        str2double(get(hObject,'String')) returns contents of input as a double


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in execute.
function execute_Callback(hObject, eventdata, handles)
% hObject    handle to execute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.input,'String');
if ~isfield(handles,'status1')
    status1=3;
else
    status1=handles.status1;
end
if ~isfield(handles,'status2')
    status2=3;
else
    status2=handles.status2;
end
try
    switch status1
        case 1%二进制转——
            switch status2
                case 1
                    result=textString;
                case 2
                    result=bin2dec(textString);
                    result=dec2base(result,8);
                case 3
                    result=bin2dec(textString);
                case 4
                    result=bin2dec(textString);
                    result=dec2hex(result);
            end
        case 2%八进制转——
            switch status2
                case 1
                    result=base2dec(textString,8);
                    result=dec2bin(result);
                case 2
                    result=textString;
                case 3
                    result=base2dec(textString,8);
                case 4
                    result=base2dec(textString,8);
                    result=dec2hex(result);
            end
        case 3%十进制转——
            switch status2
                case 1
                    textString=str2num(textString);
                    result=dec2bin(textString);
                case 2
                    textString=str2num(textString);
                    result=dec2base(textString,8);
                case 3
                    result=textString;
                case 4
                    textString=str2num(textString);
                    result=dec2hex(textString);
            end
        case 4%十六进制转——
            switch status2
                case 1
                    result=hex2dec(textString);
                    result=dec2bin(result);
                case 2
                    result=hex2dec(textString);
                    result=dec2base(result,8);
                case 3
                    result=hex2dec(textString);
                case 4
                    result=textString;
            end    
    end
catch
    result='出错，请检查是否设定了转换的进制信息！';
end
set(handles.display,'String',result);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.display, 'String' ,'欢迎使用进制转换工具');
