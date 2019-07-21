function varargout = ui_science(varargin)
% UI_SCIENCE MATLAB code for ui_science.fig
%      UI_SCIENCE, by itself, creates a new UI_SCIENCE or raises the existing
%      singleton*.
%
%      H = UI_SCIENCE returns the handle to a new UI_SCIENCE or the handle to
%      the existing singleton*.
%
%      UI_SCIENCE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI_SCIENCE.M with the given input arguments.
%
%      UI_SCIENCE('Property','Value',...) creates a new UI_SCIENCE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ui_science_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ui_science_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ui_science

% Last Modified by GUIDE v2.5 12-Feb-2019 08:42:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ui_science_OpeningFcn, ...
                   'gui_OutputFcn',  @ui_science_OutputFcn, ...
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


% --- Executes just before ui_science is made visible.
function ui_science_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ui_science (see VARARGIN)

% Choose default command line output for ui_science
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ui_science wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ui_science_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in num_1.
function num_1_Callback(hObject, eventdata, handles)
% hObject    handle to num_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '1' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_2.
function num_2_Callback(hObject, eventdata, handles)
% hObject    handle to num_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '2' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_3.
function num_3_Callback(hObject, eventdata, handles)
% hObject    handle to num_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '3' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in reverse.
function reverse_Callback(hObject, eventdata, handles)
% hObject    handle to reverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
if textString(1)=='-'
    textString=textString(2:length(textString));
else
    textString=strcat('-',textString);
end
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_0.
function num_0_Callback(hObject, eventdata, handles)
% hObject    handle to num_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '0' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in point.
function point_Callback(hObject, eventdata, handles)
% hObject    handle to point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '.' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.text1,'String');
oldLength=length(textString);
charArray=char(textString);
textString=charArray(1:oldLength-1);
set(handles.text1,'String',textString);


% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.text1,'String');
try
    result=eval(textString);
    set(handles.text1,'String',result);
catch
    set(handles.text1,'String','请检查表达式的合法性！请归零以清除出错信息！');
end

% --- Executes on button press in div.
function div_Callback(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '/' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in mul.
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '*' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_4.
function num_4_Callback(hObject, eventdata, handles)
% hObject    handle to num_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '4' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_5.
function num_5_Callback(hObject, eventdata, handles)
% hObject    handle to num_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '5' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_6.
function num_6_Callback(hObject, eventdata, handles)
% hObject    handle to num_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '6' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '+' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in sub.
function sub_Callback(hObject, eventdata, handles)
% hObject    handle to sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '-' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_7.
function num_7_Callback(hObject, eventdata, handles)
% hObject    handle to num_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '7' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_8.
function num_8_Callback(hObject, eventdata, handles)
% hObject    handle to num_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '8' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_9.
function num_9_Callback(hObject, eventdata, handles)
% hObject    handle to num_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '9' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in bracket_r.
function bracket_r_Callback(hObject, eventdata, handles)
% hObject    handle to bracket_r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, ')' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in bracket_l.
function bracket_l_Callback(hObject, eventdata, handles)
% hObject    handle to bracket_l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, '(' );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_e.
function num_e_Callback(hObject, eventdata, handles)
% hObject    handle to num_e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString, num2str(exp(1)) );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in num_pi.
function num_pi_Callback(hObject, eventdata, handles)
% hObject    handle to num_pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1, 'String' );
textString =strcat(textString,num2str(pi) );
set(handles.text1, 'String' ,textString);

% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
textString = strcat(textString,'sin(');
set(handles.text1,'String',textString)

% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
textString = strcat(textString,'cos(');
set(handles.text1,'String',textString)

% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
textString = strcat(textString,'tan(');
set(handles.text1,'String',textString)

% --- Executes on button press in pow.
function pow_Callback(hObject, eventdata, handles)
% hObject    handle to pow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
textString = strcat(textString,'^');
set(handles.text1,'String',textString);


% --- Executes on button press in arcsin.
function arcsin_Callback(hObject, eventdata, handles)
% hObject    handle to arcsin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
textString = strcat(textString,'asin(');
set(handles.text1,'String',textString)

% --- Executes on button press in arccos.
function arccos_Callback(hObject, eventdata, handles)
% hObject    handle to arccos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
textString = strcat(textString,'acos(');
set(handles.text1,'String',textString)

% --- Executes on button press in arctan.
function arctan_Callback(hObject, eventdata, handles)
% hObject    handle to arctan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
textString = strcat(textString,'atan(');
set(handles.text1,'String',textString);

% --- Executes on button press in square.
function square_Callback(hObject, eventdata, handles)
% hObject    handle to square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString=get(handles.text1,'String');
textString=strcat(textString,'^2');
set(handles.text1,'String',textString);

% --- Executes on button press in clean.
function clean_Callback(hObject, eventdata, handles)
% hObject    handle to clean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text1,'String','');
set(handles.int_display,'String','');
set(handles,diff_display,'String','');

% --- Executes on button press in sqrt.
function sqrt_Callback(hObject, eventdata, handles)
% hObject    handle to sqrt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
try
    temp=eval(textString);
    result=sqrt(temp);
    set(handles.text1,'String',result);
catch
    set(handles.text1,'String','请检查表达式的合法性！请归零以清除出错信息！');
end

% --- Executes on button press in inverse.
function inverse_Callback(hObject, eventdata, handles)
% hObject    handle to inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
try
    temp=eval(textString);
    result=1/temp;
    set(handles.text1,'String',result);
catch
    set(handles.text1,'String','请检查表达式的合法性！请归零以清除出错信息！');
end

% --- Executes on button press in factorial.
function factorial_Callback(hObject, eventdata, handles)
% hObject    handle to factorial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
try
    temp=eval(textString);
    result=factorial(temp);
    set(handles.text1,'String',result);
catch
    set(handles.text1,'String','请检查表达式的合法性！请归零以清除出错信息！');
end

% --- Executes on button press in log.
function log_Callback(hObject, eventdata, handles)
% hObject    handle to log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.text1,'String');
try
    temp=eval(textString);
    result=log(temp);
    set(handles.text1,'String',result);
catch
    set(handles.text1,'String','请检查表达式的合法性！请归零以清除出错信息！');
end


