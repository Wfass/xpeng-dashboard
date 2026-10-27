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

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

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

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getType(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    .line 49
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public addWidget(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v0, "extra"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtra()Lorg/json/JSONObject;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getExtraType()Ljava/lang/String;
    .locals 1

    const-string v0, "extraType"

    .line 105
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntContent(Ljava/lang/String;)I
    .locals 2

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
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

    const-string/jumbo v1, "widgetId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExtra(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mExtra:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setExtraType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 1

    const-string v0, "extraType"

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object p1

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 2

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

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setWidgetId(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 2

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string/jumbo v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

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

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 185
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v2, "count"

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 191
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 195
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->mWidget:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
