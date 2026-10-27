.class public Lcom/xiaopeng/speech/speechwidget/ListWidget;
.super Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
.source "ListWidget.java"


# static fields
.field public static final EXTRA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final EXTRA_TYPE_NAVI:Ljava/lang/String; = "navi"

.field public static final EXTRA_TYPE_NAVI_ROUTE:Ljava/lang/String; = "navi_route"

.field public static final EXTRA_TYPE_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_EXISTS:Ljava/lang/String; = "1"

.field public static final STATUS_NOT_FOUND:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    const-string v0, "list"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addContentWidget(Lcom/xiaopeng/speech/speechwidget/ContentWidget;)Lcom/xiaopeng/speech/speechwidget/ListWidget;
    .locals 1
    .param p1, "var1"    # Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    .line 65
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addWidget(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    return-object v0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;

    .line 69
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 30
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/ListWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 34
    new-instance v2, Lcom/xiaopeng/speech/speechwidget/ContentWidget;

    invoke-direct {v2}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;-><init>()V

    .line 36
    .local v2, "speechWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 37
    .local v3, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/speechwidget/ContentWidget;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_1

    .line 38
    :catch_0
    move-exception v3

    .line 39
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/speech/speechwidget/ListWidget;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v2    # "speechWidget":Lcom/xiaopeng/speech/speechwidget/ContentWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public bridge synthetic fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPage()I
    .locals 1

    .line 57
    const-string v0, "currentPage"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->getIntContent(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 61
    const-string v0, "itemsPerPage"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->getIntContent(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExist(Z)Lcom/xiaopeng/speech/speechwidget/ListWidget;
    .locals 2
    .param p1, "exist"    # Z

    .line 73
    const-string v0, "status"

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-super {p0, v0, v1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->addContent(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/speechwidget/ListWidget;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 48
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/speech/speechwidget/ListWidget;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/ListWidget;

    .line 49
    return-object p0
.end method
