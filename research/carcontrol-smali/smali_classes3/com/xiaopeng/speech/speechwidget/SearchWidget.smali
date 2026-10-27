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

    const-string v0, "search"

    .line 33
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SearchWidget;
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/speechwidget/SpeechWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SpeechWidget;

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->mWidget:Lorg/json/JSONObject;

    const-string v0, "searchContent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "searchType"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "chargingStation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "food"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->searchType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->searchType:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->searchType:I

    :cond_2
    :goto_0
    return-object p0
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

    const-string v0, "currentPage"

    .line 64
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->getIntContent(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getOpenDetailPosition()I
    .locals 1

    const-string v0, "curPageOpenSerial"

    .line 72
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/speechwidget/SearchWidget;->getIntContent(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPageSize()I
    .locals 1

    const-string v0, "itemsPerPage"

    .line 68
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

    const-string v0, "title"

    .line 60
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
