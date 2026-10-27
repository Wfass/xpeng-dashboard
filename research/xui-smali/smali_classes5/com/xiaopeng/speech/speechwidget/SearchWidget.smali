.class public Lcom/xiaopeng/speech/speechwidget/SearchWidget;
.super Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
.source "SearchWidget.java"


# static fields
.field private static final SEARCH_CHARGING_STATION:Ljava/lang/String; = "chargingStation"

.field private static final SEARCH_FOOD:Ljava/lang/String; = "food"

.field public static final SEARCH_TYPE_CHARGING:I = 0x1

.field public static final SEARCH_TYPE_FOOD:I = 0x2

.field public static final SEARCH_TYPE_NONE:I


# instance fields
.field private searchType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    const-string v0, "search"

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SearchWidget;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->mWidget:Lorg/json/JSONObject;

    const-string v1, "searchContent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 41
    const-string v1, "searchType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x24023a7d

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x300c5e

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "food"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v6

    goto :goto_0

    :cond_1
    const-string v3, "chargingStation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 52
    iput v5, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->searchType:I

    .end local v1    # "type":Ljava/lang/String;
    goto :goto_1

    .line 48
    .restart local v1    # "type":Ljava/lang/String;
    :pswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->searchType:I

    .line 49
    goto :goto_1

    .line 44
    :pswitch_1
    iput v6, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->searchType:I

    .line 45
    nop

    .line 56
    .end local v1    # "type":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SearchWidget;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPage()I
    .locals 1

    .line 64
    const-string v0, "currentPage"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->getIntContent(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getOpenDetailPosition()I
    .locals 1

    .line 72
    const-string v0, "curPageOpenSerial"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->getIntContent(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 68
    const-string v0, "itemsPerPage"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->getIntContent(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSearchType()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->searchType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidget()Lorg/json/JSONObject;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->mWidget:Lorg/json/JSONObject;

    return-object v0
.end method
