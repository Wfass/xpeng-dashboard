.class public Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;
.super Ljava/lang/Object;
.source "ActionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;
    }
.end annotation


# static fields
.field private static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAction(Lorg/json/JSONObject;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "fileRoot"    # Ljava/lang/String;
    .param p2, "interceptor"    # Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 61
    return-object v0

    .line 64
    :cond_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "type":Ljava/lang/String;
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0, v1, p1}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;->parseAction(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v0

    .line 68
    .local v0, "action":Lcom/xiaopeng/xuiservice/smart/action/Action;
    :goto_0
    if-nez v0, :cond_2

    .line 69
    invoke-static {p0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseActionByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v0

    .line 71
    :cond_2
    if-eqz v0, :cond_4

    .line 72
    const-string v2, "duration"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    const-string v2, "duration"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->delayedStop(Lcom/xiaopeng/xuiservice/smart/action/Action;JLjava/util/concurrent/TimeUnit;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v0

    .line 75
    :cond_3
    const-string v2, "delay"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    const-string v2, "delay"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->delayedStart(Lcom/xiaopeng/xuiservice/smart/action/Action;JLjava/util/concurrent/TimeUnit;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v0

    .line 80
    :cond_4
    return-object v0
.end method

.method private static parseActionByType(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 30
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "fileRoot"    # Ljava/lang/String;
    .param p3, "interceptor"    # Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 85
    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "select_resource"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "sequence"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "report_key_value"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "sr_icon_show"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "sr_icon_hide"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "toast"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "image"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "push"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "kill"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "avas"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "tts"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "ref"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "llu"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "any"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "all"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "sh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_12
    const-string v4, "resource"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_13
    const-string v4, "ambient"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_14
    const-string v4, "reboot"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    goto :goto_1

    :sswitch_15
    const-string v4, "dialog"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto :goto_1

    :sswitch_16
    const-string v4, "delete"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto :goto_1

    :sswitch_17
    const-string v4, "set_property"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x18

    goto :goto_1

    :sswitch_18
    const-string v4, "delete_resource"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto :goto_1

    :sswitch_19
    const-string v4, "pm_clear"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    goto :goto_1

    :sswitch_1a
    const-string v4, "broadcast"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x16

    goto :goto_1

    :sswitch_1b
    const-string v4, "activity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x15

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v6

    :goto_1
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 228
    :pswitch_0
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconHide;

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconHide;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 224
    :pswitch_1
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    const-string v8, "file"

    .line 225
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "location"

    .line 226
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSRIconShow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-object v4

    .line 221
    :pswitch_2
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;

    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "single"

    .line 222
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReportKeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    return-object v4

    .line 219
    :pswitch_3
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;

    const-string v5, "property"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSetProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 217
    :pswitch_4
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionExecSH;

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "file"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionExecSH;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 215
    :pswitch_5
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSendBroadcast;

    const-string v5, "intent"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseIntent(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSendBroadcast;-><init>(Landroid/content/Intent;)V

    return-object v4

    .line 213
    :pswitch_6
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionStartActivity;

    const-string v5, "intent"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseIntent(Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionStartActivity;-><init>(Landroid/content/Intent;)V

    return-object v4

    .line 211
    :pswitch_7
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReboot;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionReboot;-><init>()V

    return-object v4

    .line 209
    :pswitch_8
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;

    const-string v5, "process"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionKillProcess;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 207
    :pswitch_9
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;

    const-string v5, "package"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPmClear;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 202
    :pswitch_a
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "source"

    .line 203
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "target"

    .line 204
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionPushFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-object v4

    .line 200
    :pswitch_b
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDeleteFile;

    const-string v5, "path"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDeleteFile;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 194
    :pswitch_c
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;

    const-string v5, "resourceId"

    .line 195
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceType"

    .line 196
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "select"

    .line 197
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionSelectResource;-><init>(Ljava/lang/String;IZ)V

    .line 194
    return-object v4

    .line 192
    :pswitch_d
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDeleteResource;

    const-string v5, "resourceId"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDeleteResource;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 178
    :pswitch_e
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;

    const-string v5, "resourceId"

    .line 179
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceType"

    .line 180
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v6, "resourceName"

    .line 181
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "effectTime"

    .line 182
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonObject2Timestamp(Lorg/json/JSONObject;)J

    move-result-wide v10

    const-string v6, "expireTime"

    .line 183
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/smart/condition/util/ConditionJsonUtil;->jsonObject2Timestamp(Lorg/json/JSONObject;)J

    move-result-wide v12

    const-string v6, "extraData"

    .line 184
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/io/File;

    const-string v15, "file"

    .line 185
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    new-instance v6, Ljava/io/File;

    const-string v7, "resourceIcon"

    .line 186
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    const-string v6, "description"

    .line 187
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v6, "price"

    .line 188
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v6, "select"

    .line 189
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move-object v6, v4

    move-object v7, v5

    invoke-direct/range {v6 .. v19}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;-><init>(Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 178
    return-object v4

    .line 175
    :pswitch_f
    new-instance v4, Ljava/io/File;

    const-string v5, "file"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "refContent":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v2, v3}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseAction(Lorg/json/JSONObject;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v5

    return-object v5

    .line 166
    .end local v4    # "refContent":Ljava/lang/String;
    :pswitch_10
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;

    const-string v5, "title"

    .line 167
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "message"

    .line 168
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "confirmButton"

    .line 169
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "cancelButton"

    .line 170
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "confirmAction"

    .line 171
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseAction(Lorg/json/JSONObject;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v11

    const-string v5, "cancelAction"

    .line 172
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseAction(Lorg/json/JSONObject;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v12

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/Action;Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    .line 166
    return-object v4

    .line 161
    :pswitch_11
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;

    const-string v5, "text"

    .line 162
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "show"

    .line 163
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object v4

    .line 155
    :pswitch_12
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;

    const-string v5, "effect"

    .line 156
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    const-string v7, "file"

    .line 157
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "repeat"

    .line 158
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    return-object v4

    .line 146
    :pswitch_13
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;

    const-string v5, "effect"

    .line 147
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "color"

    .line 148
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2intArray(Lorg/json/JSONArray;)[I

    move-result-object v10

    const-string v5, "brightness"

    .line 149
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2intArray(Lorg/json/JSONArray;)[I

    move-result-object v11

    const-string v5, "fade"

    .line 150
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2intArray(Lorg/json/JSONArray;)[I

    move-result-object v12

    const-string v5, "executeTime"

    const/16 v6, 0x2710

    .line 151
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v5, "timeInterval"

    const/16 v6, 0x3e8

    .line 152
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;-><init>(Ljava/lang/String;[I[I[III)V

    .line 146
    return-object v4

    .line 141
    :pswitch_14
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAVAS;

    new-instance v5, Ljava/io/File;

    const-string v6, "file"

    .line 142
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "repeat"

    .line 143
    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAVAS;-><init>(Ljava/lang/String;I)V

    .line 141
    return-object v4

    .line 136
    :pswitch_15
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;

    const-string v5, "text"

    .line 137
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "repeat"

    .line 138
    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionTTS;-><init>(Ljava/lang/String;I)V

    .line 136
    return-object v4

    .line 130
    :pswitch_16
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;

    new-instance v5, Ljava/io/File;

    const-string v6, "file"

    .line 131
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "repeat"

    .line 132
    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "audioFocus"

    .line 133
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;-><init>(Ljava/lang/String;II)V

    .line 130
    return-object v4

    .line 122
    :pswitch_17
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;

    new-instance v5, Ljava/io/File;

    const-string v6, "file"

    .line 123
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "x"

    .line 124
    invoke-virtual {v0, v6, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string/jumbo v8, "y"

    .line 125
    invoke-virtual {v0, v8, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    const-string/jumbo v8, "w"

    .line 126
    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    const-string v8, "h"

    .line 127
    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    move-object v8, v4

    move-object v9, v5

    move-wide v10, v6

    invoke-direct/range {v8 .. v17}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionImage;-><init>(Ljava/lang/String;DDDD)V

    .line 122
    return-object v4

    .line 112
    :pswitch_18
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;

    new-instance v5, Ljava/io/File;

    const-string v6, "file"

    .line 113
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    const-string v5, "repeat"

    .line 114
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    const-string v5, "audioFocus"

    .line 115
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v5, "x"

    .line 116
    invoke-virtual {v0, v5, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v22

    const-string/jumbo v5, "y"

    .line 117
    invoke-virtual {v0, v5, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v24

    const-string/jumbo v5, "w"

    .line 118
    invoke-virtual {v0, v5, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v26

    const-string v5, "h"

    .line 119
    invoke-virtual {v0, v5, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v28

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v29}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;-><init>(Ljava/lang/String;IIDDDD)V

    .line 112
    return-object v4

    .line 89
    :pswitch_19
    const-string v4, "actions"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 90
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 92
    .local v9, "length":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v10, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    move v11, v7

    .line 93
    .local v11, "i":I
    :goto_2
    if-ge v11, v9, :cond_2

    .line 97
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12, v2, v3}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseAction(Lorg/json/JSONObject;Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser$ParserInterceptor;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v12

    .line 98
    .local v12, "subAction":Lcom/xiaopeng/xuiservice/smart/action/Action;
    if-eqz v12, :cond_1

    .line 99
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v12    # "subAction":Lcom/xiaopeng/xuiservice/smart/action/Action;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 102
    .end local v11    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, 0x179a1

    if-eq v11, v12, :cond_5

    const v8, 0x179ec

    if-eq v11, v8, :cond_4

    const v5, 0x507077c1

    if-eq v11, v5, :cond_3

    goto :goto_3

    :cond_3
    const-string v5, "sequence"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v7

    goto :goto_4

    :cond_4
    const-string v7, "any"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_5
    const-string v5, "all"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v8

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v6

    :goto_4
    packed-switch v5, :pswitch_data_1

    .line 110
    goto :goto_5

    .line 108
    :pswitch_1a
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->parallelAny(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v5

    return-object v5

    .line 106
    :pswitch_1b
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->parallelAll(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v5

    return-object v5

    .line 104
    :pswitch_1c
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->sequence(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/action/Action;

    move-result-object v5

    return-object v5

    .line 230
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "length":I
    .end local v10    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    :goto_5
    const/4 v4, 0x0

    return-object v4

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_1b
        -0x607e173f -> :sswitch_1a
        -0x5fb30a75 -> :sswitch_19
        -0x57c15fde -> :sswitch_18
        -0x517ddeee -> :sswitch_17
        -0x4f997a55 -> :sswitch_16
        -0x4f6602b8 -> :sswitch_15
        -0x37ba085b -> :sswitch_14
        -0x352d0d68 -> :sswitch_13
        -0x14543bf2 -> :sswitch_12
        0xe55 -> :sswitch_11
        0x179a1 -> :sswitch_10
        0x179ec -> :sswitch_f
        0x1a2f5 -> :sswitch_e
        0x1b893 -> :sswitch_d
        0x1c1f3 -> :sswitch_c
        0x2ddf27 -> :sswitch_b
        0x323b5e -> :sswitch_a
        0x34af1a -> :sswitch_9
        0x58d9bd6 -> :sswitch_8
        0x5faa95b -> :sswitch_7
        0x6969627 -> :sswitch_6
        0x6b0147b -> :sswitch_5
        0x17001b68 -> :sswitch_4
        0x17051923 -> :sswitch_3
        0x4c676e46 -> :sswitch_2
        0x507077c1 -> :sswitch_1
        0x59379bf1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method private static parseComponent(Lorg/json/JSONObject;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 271
    const-string v0, "package"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "class"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "package"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 274
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseExtra(Lorg/json/JSONArray;)Landroid/os/Bundle;
    .locals 9
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 283
    .local v1, "size":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 284
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 285
    .local v4, "kv":Lorg/json/JSONObject;
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "type":Ljava/lang/String;
    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "key":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "boolean-array"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x5

    goto :goto_1

    :sswitch_1
    const-string v8, "boolean"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v7, v2

    goto :goto_1

    :sswitch_2
    const-string v8, "long"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_3
    const-string v8, "int"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_4
    const-string v8, "double-array"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x8

    goto :goto_1

    :sswitch_5
    const-string v8, "string"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x4

    goto :goto_1

    :sswitch_6
    const-string v8, "string-array"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x9

    goto :goto_1

    :sswitch_7
    const-string v8, "int-array"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x6

    goto :goto_1

    :sswitch_8
    const-string v8, "double"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_9
    const-string v8, "long-array"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x7

    :cond_0
    :goto_1
    packed-switch v7, :pswitch_data_0

    .end local v4    # "kv":Lorg/json/JSONObject;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    goto/16 :goto_2

    .line 316
    .restart local v4    # "kv":Lorg/json/JSONObject;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    :pswitch_0
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2StringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .end local v4    # "kv":Lorg/json/JSONObject;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_2

    .line 313
    .restart local v4    # "kv":Lorg/json/JSONObject;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    :pswitch_1
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2doubleArray(Lorg/json/JSONArray;)[D

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 314
    goto :goto_2

    .line 310
    :pswitch_2
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2longArray(Lorg/json/JSONArray;)[J

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 311
    goto :goto_2

    .line 307
    :pswitch_3
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2intArray(Lorg/json/JSONArray;)[I

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 308
    goto :goto_2

    .line 304
    :pswitch_4
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2booleanArray(Lorg/json/JSONArray;)[Z

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 305
    goto :goto_2

    .line 301
    :pswitch_5
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    goto :goto_2

    .line 298
    :pswitch_6
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 299
    goto :goto_2

    .line 295
    :pswitch_7
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    goto :goto_2

    .line 292
    :pswitch_8
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    goto :goto_2

    .line 289
    :pswitch_9
    const-string v7, "value"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    nop

    .line 283
    .end local v4    # "kv":Lorg/json/JSONObject;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 321
    .end local v3    # "i":I
    :cond_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x699e8038 -> :sswitch_9
        -0x4f08842f -> :sswitch_8
        -0x4283d105 -> :sswitch_7
        -0x3d122a63 -> :sswitch_6
        -0x352a9fef -> :sswitch_5
        -0x383dea3 -> :sswitch_4
        0x197ef -> :sswitch_3
        0x32c67c -> :sswitch_2
        0x3db6c28 -> :sswitch_1
        0x2aea3474 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseIntent(Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "action"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_0
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 244
    :cond_1
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    :cond_2
    const-string v1, "package"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    const-string v1, "package"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    :cond_3
    const-string v1, "component"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    const-string v1, "component"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseComponent(Lorg/json/JSONObject;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 256
    :cond_4
    const-string v1, "category"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 257
    const-string v1, "category"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 258
    .local v1, "categoryArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 259
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "categoryArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_5
    const-string v1, "extras"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 264
    const-string v1, "extras"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/action/util/ActionParser;->parseExtra(Lorg/json/JSONArray;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 267
    :cond_6
    return-object v0
.end method
