.class public Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;
.super Ljava/lang/Object;
.source "DuiMusicParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams$CATEGORY;
    }
.end annotation


# static fields
.field public static final CATEGORY_INVALID:I = -0x1

.field public static final CATEGORY_MODULE:I = 0x1

.field public static final CATEGORY_STYLE:I = 0x2

.field public static final CATEGORY_TAG:I = 0x3


# instance fields
.field private category:I
    .annotation build Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams$CATEGORY;
    .end annotation
.end field

.field private id:I

.field private index:I

.field private keyword:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->category:I

    .line 29
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->index:I

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->category:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->id:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->index:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->type:I

    return v0
.end method

.method public setCategory(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams$CATEGORY;
        .end annotation
    .end param

    .line 61
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->category:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->id:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->index:I

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->mode:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;->type:I

    return-void
.end method
