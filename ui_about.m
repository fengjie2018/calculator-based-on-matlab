function varargout = ui_about(varargin)
% UI_ABOUT MATLAB code for ui_about.fig
%      UI_ABOUT, by itself, creates a new UI_ABOUT or raises the existing
%      singleton*.
%
%      H = UI_ABOUT returns the handle to a new UI_ABOUT or the handle to
%      the existing singleton*.
%
%      UI_ABOUT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI_ABOUT.M with the given input arguments.
%
%      UI_ABOUT('Property','Value',...) creates a new UI_ABOUT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ui_about_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ui_about_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ui_about

% Last Modified by GUIDE v2.5 11-Feb-2019 17:37:32


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ui_about_OpeningFcn, ...
                   'gui_OutputFcn',  @ui_about_OutputFcn, ...
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


% --- Executes just before ui_about is made visible.
function ui_about_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ui_about (see VARARGIN)

% Choose default command line output for ui_about
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ui_about wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ui_about_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
