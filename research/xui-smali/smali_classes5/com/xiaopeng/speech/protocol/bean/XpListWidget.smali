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

.field private pageSize:I

.field private totalPage:I

.field private totalSize:I

.field private triggerApi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->contents:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->totalSize:I

    .line 41
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->pageSize:I

    .line 46
    iput v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->totalPage:I

    return-void
.end method


# virtual methods
.method public getDialogueInfo()Lcom/google/gson/JsonObject;
    .locals 1

    .line 91
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->dialogueInfo:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getExtra()Lcom/google/gson/JsonObject;
    .locals 1

    .line 49
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->extra:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getTriggerApi()Ljava/lang/String;
    .locals 1

    .line 87
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
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

    .line 71
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    .local p1, "contents":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->contents:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setDialogueInfo(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "dialogueInfo"    # Lcom/google/gson/JsonObject;

    .line 63
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->dialogueInfo:Lcom/google/gson/JsonObject;

    .line 64
    return-void
.end method

.method public setExtra(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "extra"    # Lcom/google/gson/JsonObject;

    .line 55
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->extra:Lcom/google/gson/JsonObject;

    .line 56
    return-void
.end method

.method public setListType(Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;)V
    .locals 0
    .param p1, "listType"    # Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    .line 67
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->listType:Lcom/xiaopeng/speech/protocol/bean/XpListTypeEnum;

    .line 68
    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .param p1, "pageSize"    # I

    .line 79
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->pageSize:I

    .line 80
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0
    .param p1, "totalPage"    # I

    .line 83
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->totalPage:I

    .line 84
    return-void
.end method

.method public setTotalSize(I)V
    .locals 0
    .param p1, "totalSize"    # I

    .line 75
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->totalSize:I

    .line 76
    return-void
.end method

.method public setTriggerApi(Ljava/lang/String;)V
    .locals 0
    .param p1, "triggerApi"    # Ljava/lang/String;

    .line 59
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/XpListWidget;, "Lcom/xiaopeng/speech/protocol/bean/XpListWidget<TT;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/XpListWidget;->triggerApi:Ljava/lang/String;

    .line 60
    return-void
.end method
