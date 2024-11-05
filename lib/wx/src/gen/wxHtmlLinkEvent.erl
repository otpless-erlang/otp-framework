%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2009-2024. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%
%% This file is generated DO NOT EDIT

-module(wxHtmlLinkEvent).
-moduledoc """
Functions for wxHtmlLinkEvent class

This event class is used for the events generated by `m:wxHtmlWindow`.

This class is derived (and can use functions) from: `m:wxCommandEvent`
`m:wxEvent`

wxWidgets docs:
[wxHtmlLinkEvent](https://docs.wxwidgets.org/3.1/classwx_html_link_event.html)

## Events

Use `wxEvtHandler:connect/3` with
[`wxHtmlLinkEventType`](`t:wxHtmlLinkEventType/0`) to subscribe to events of
this type.
""".
-include("wxe.hrl").
-export([getLinkInfo/1]).

%% inherited exports
-export([getClientData/1,getExtraLong/1,getId/1,getInt/1,getSelection/1,getSkipped/1,
  getString/1,getTimestamp/1,isChecked/1,isCommandEvent/1,isSelection/1,
  parent_class/1,resumePropagation/2,setInt/2,setString/2,shouldPropagate/1,
  skip/1,skip/2,stopPropagation/1]).

-type wxHtmlLinkEvent() :: wx:wx_object().
-include("wx.hrl").
-type wxHtmlLinkEventType() :: 'command_html_link_clicked' | 'html_cell_clicked' | 'html_cell_hover'.
-export_type([wxHtmlLinkEvent/0, wxHtmlLink/0, wxHtmlLinkEventType/0]).
%% @hidden
-doc false.
parent_class(wxCommandEvent) -> true;
parent_class(wxEvent) -> true;
parent_class(_Class) -> erlang:error({badtype, ?MODULE}).

%% @doc See <a href="http://www.wxwidgets.org/manuals/2.8.12/wx_wxhtmllinkevent.html#wxhtmllinkeventgetlinkinfo">external documentation</a>.
-doc """
Returns the [`wx_wxHtmlLinkInfo()`](`t:wx:wx_wxHtmlLinkInfo/0`) which contains
info about the cell clicked and the hyperlink it contains.
""".
-spec getLinkInfo(This) -> wx:wx_wxHtmlLinkInfo() when
	This::wxHtmlLinkEvent().
getLinkInfo(#wx_ref{type=ThisT}=This) ->
  ?CLASS(ThisT,wxHtmlLinkEvent),
  wxe_util:queue_cmd(This,?get_env(),?wxHtmlLinkEvent_GetLinkInfo),
  wxe_util:rec(?wxHtmlLinkEvent_GetLinkInfo).

 %% From wxCommandEvent
%% @hidden
-doc false.
setString(This,String) -> wxCommandEvent:setString(This,String).
%% @hidden
-doc false.
setInt(This,IntCommand) -> wxCommandEvent:setInt(This,IntCommand).
%% @hidden
-doc false.
isSelection(This) -> wxCommandEvent:isSelection(This).
%% @hidden
-doc false.
isChecked(This) -> wxCommandEvent:isChecked(This).
%% @hidden
-doc false.
getString(This) -> wxCommandEvent:getString(This).
%% @hidden
-doc false.
getSelection(This) -> wxCommandEvent:getSelection(This).
%% @hidden
-doc false.
getInt(This) -> wxCommandEvent:getInt(This).
%% @hidden
-doc false.
getExtraLong(This) -> wxCommandEvent:getExtraLong(This).
%% @hidden
-doc false.
getClientData(This) -> wxCommandEvent:getClientData(This).
 %% From wxEvent
%% @hidden
-doc false.
stopPropagation(This) -> wxEvent:stopPropagation(This).
%% @hidden
-doc false.
skip(This, Options) -> wxEvent:skip(This, Options).
%% @hidden
-doc false.
skip(This) -> wxEvent:skip(This).
%% @hidden
-doc false.
shouldPropagate(This) -> wxEvent:shouldPropagate(This).
%% @hidden
-doc false.
resumePropagation(This,PropagationLevel) -> wxEvent:resumePropagation(This,PropagationLevel).
%% @hidden
-doc false.
isCommandEvent(This) -> wxEvent:isCommandEvent(This).
%% @hidden
-doc false.
getTimestamp(This) -> wxEvent:getTimestamp(This).
%% @hidden
-doc false.
getSkipped(This) -> wxEvent:getSkipped(This).
%% @hidden
-doc false.
getId(This) -> wxEvent:getId(This).