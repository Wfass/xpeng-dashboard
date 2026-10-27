.class public Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
.super Ljava/lang/Object;
.source "SpeechWidget.java"


# static fields
.field public static final DATA_SOURCE_API:Ljava/lang/String; = "api"

.field public static final DATA_SOURCE_MATCH:Ljava/lang/String; = "partialMatch"

.field public static final DATA_SOURCE_SELECT:Ljava/lang/String; = "selected"

.field public static final TYPE_CARD:Ljava/lang/String; = "card"

.field public static final TYPE_CONTENT:Ljava/lang/String; = "content"

.field public static final TYPE_CUSTOM:Ljava/lang/String; = "custom"

.field public static final TYPE_LIST:Ljava/lang/String; = "list"

.field public static final TYPE_MEDIA:Ljava/lang/String; = "media"

.field public static final TYPE_SEARCH:Ljava/lang/String; = "search"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final TYPE_WEB:Ljava/lang/String; = "web"

.field protected static final WIDGET_CONTENT:Ljava/lang/String; = "content"

.field protected static final WIDGET_COUNT:Ljava/lang/String; = "count"

.field public static final WIDGET_DATA_SOURCE:Ljava/lang/String; = "dataSource"

.field public static final WIDGET_EXTRA:Ljava/lang/String; = "extra"

.field protected static final WIDGET_EXTRA_TYPE:Ljava/lang/String; = "extraType"

.field public static final WIDGET_IMAGEURL:Ljava/lang/String; = "imageUrl"

.field public static final WIDGET_LABEL:Ljava/lang/String; = "label"

.field public static final WIDGET_LINKURL:Ljava/lang/String; = "linkUrl"

.field public static final WIDGET_SEARCH_CONTENT:Ljava/lang/String; = "searchContent"

.field public static final WIDGET_SUBTITLE:Ljava/lang/String; = "subTitle"

.field public static final WIDGET_TEXT:Ljava/lang/String; = "text"

.field public static final WIDGET_TITLE:Ljava/lang/String; = "title"

.field protected static final WIDGET_TYPE:Ljava/lang/String; = "type"

.field protected static final WIDGET_TYPE_EX:Ljava/lang/String; = "duiWidget"

.field protected static final WIDGET_UNIQUE_ID:Ljava/lang/String; = "widgetId"

.field public static final WIDGET_URL:Ljava/lang/String; = "url"


# instance fields
.field protected mExtra:Lorg/json/JSONObject;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/speechwidget/SpeechWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidget:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mList:Ljava/util/List;

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "duiWidget"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public static getType(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 49
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object p0
.end method

.method public addWidget(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1
    .param p1, "widget"    # Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-object p0
.end method

.method public fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    .line 77
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    .local v0, "extraObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 79
    iput-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    .line 82
    .end local v0    # "extraObj":Lorg/json/JSONObject;
    :cond_0
    return-object p0
.end method

.method public getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "dataSource"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra()Lorg/json/JSONObject;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getExtraType()Ljava/lang/String;
    .locals 1

    .line 105
    const-string v0, "extraType"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntContent(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "val":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 129
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/speechwidget/SpeechWidget;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "widgetId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExtra(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    .line 149
    return-object p0
.end method

.method public setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 101
    const-string v0, "extraType"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "duiWidget"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object p0
.end method

.method public setWidgetId(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 205
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "extra"

    iget-object v2, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "var6":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 177
    .end local v0    # "var6":Lorg/json/JSONException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "type":Ljava/lang/String;
    const-string v1, "list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 182
    .local v1, "content":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 185
    .local v3, "widget":Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    .end local v3    # "widget":Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    goto :goto_1

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v4, "count"

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    iget-object v3, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v4, "content"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .end local v1    # "content":Lorg/json/JSONArray;
    .end local v2    # "it":Ljava/util/Iterator;
    goto :goto_2

    .line 190
    :catch_1
    move-exception v1

    .line 191
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 195
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
