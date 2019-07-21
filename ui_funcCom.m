function varargout = ui_funcCom(varargin)
% UI_FUNCCOM MATLAB code for ui_funcCom.fig
%      UI_FUNCCOM, by itself, creates a new UI_FUNCCOM or raises the existing
%      singleton*.
%
%      H = UI_FUNCCOM returns the handle to a new UI_FUNCCOM or the handle to
%      the existing singleton*.
%
%      UI_FUNCCOM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI_FUNCCOM.M with the given input arguments.
%
%      UI_FUNCCOM('Property','Value',...) creates a new UI_FUNCCOM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ui_funcCom_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ui_funcCom_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ui_funcCom

% Last Modified by GUIDE v2.5 26-Mar-2019 10:50:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ui_funcCom_OpeningFcn, ...
                   'gui_OutputFcn',  @ui_funcCom_OutputFcn, ...
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


% --- Executes just before ui_funcCom is made visible.
function ui_funcCom_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ui_funcCom (see VARARGIN)

% Choose default command line output for ui_funcCom
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ui_funcCom wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ui_funcCom_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function expression_Callback(hObject, eventdata, handles)
% hObject    handle to expression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of expression as text
%        str2double(get(hObject,'String')) returns contents of expression as a double


% --- Executes during object creation, after setting all properties.
function expression_CreateFcn(hObject, eventdata, handles)
% hObject    handle to expression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in diff_option.
function diff_option_Callback(hObject, eventdata, handles)
% hObject    handle to diff_option (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns diff_option contents as cell array
%        contents{get(hObject,'Value')} returns selected item from diff_option
val=get(hObject,'value');%获取数值,从上到下依次1到5
switch val
    case 1
        diffNumber=1;
    case 2
        diffNumber=1;
    case 3
        diffNumber=2;
    case 4
        diffNumber=3;
    case 5
        diffNumber=4;
end
handles.diffNumber=diffNumber;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function diff_option_CreateFcn(hObject, eventdata, handles)
% hObject    handle to diff_option (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in diff_execute.
function diff_execute_Callback(hObject, eventdata, handles)
% hObject    handle to diff_execute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x;
expression=get(handles.expression,'String');
if ~isfield(handles,'diffNumber')
    handles.diffNumber=1;
end
try
    expression=sym(expression);
    result=diff(expression,handles.diffNumber);
    result=char(result);
catch
    result='非法输入！';
end
set(handles.display,'String',result);


function int_low_Callback(hObject, eventdata, handles)
% hObject    handle to int_low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of int_low as text
%        str2double(get(hObject,'String')) returns contents of int_low as a double


% --- Executes during object creation, after setting all properties.
function int_low_CreateFcn(hObject, eventdata, handles)
% hObject    handle to int_low (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function int_up_Callback(hObject, eventdata, handles)
% hObject    handle to int_up (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of int_up as text
%        str2double(get(hObject,'String')) returns contents of int_up as a double


% --- Executes during object creation, after setting all properties.
function int_up_CreateFcn(hObject, eventdata, handles)
% hObject    handle to int_up (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






% --- Executes on button press in int_execute.
function int_execute_Callback(hObject, eventdata, handles)
% hObject    handle to int_execute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x;
low=get(handles.int_low,'String');
up=get(handles.int_up,'String');
expression=get(handles.expression,'String');
try
    expression=sym(expression);
    if isempty(low)&&isempty(up)
        result=int(expression,x);
        result=char(result);
        result=strcat(result,'+C');
    else
        low=str2num(low);
        up=str2num(up);
        result=int(expression,x,low,up);
        result=char(result);
    end
catch
    result='非法输入！';
end
set(handles.display,'String',result);





    






% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);
