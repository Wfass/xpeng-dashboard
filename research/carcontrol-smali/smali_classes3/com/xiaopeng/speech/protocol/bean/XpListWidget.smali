.class public Lcom/xiaopeng/speech/protocol/bean/XpListWidget;
.super Ljava/lang/Object;
.source "XpListWidget.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private dialogueInfo:Lcom/google/gson/JsonObject;

.field private extra:Lcom/google/gson/JsonObject;

.field private listType:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

.field private pageIndex:I

.field private pageSize:I

.field private totalPage:I

.field private totalSize:I

.field private triggerApi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->contents:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->totalSize:I

    .line 41
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->pageSize:I

    .line 46
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->totalPage:I

    .line 51
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->pageIndex:I

    return-void
.end method


# virtual methods
.method public getDialogueInfo()Lcom/google/gson/JsonObject;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->dialogueInfo:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getExtra()Lcom/google/gson/JsonObject;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->extra:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getTriggerApi()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->triggerApi:Ljava/lang/String;

    return-object v0
.end method

.method public setContents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->contents:Ljava/util/List;

    return-void
.end method

.method public setDialogueInfo(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->dialogueInfo:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setExtra(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->extra:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setListType(Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->listType:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->pageIndex:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->pageSize:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->totalPage:I

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->totalSize:I

    return-void
.end method

.method public setTriggerApi(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->triggerApi:Ljava/lang/String;

    return-void
.end method
