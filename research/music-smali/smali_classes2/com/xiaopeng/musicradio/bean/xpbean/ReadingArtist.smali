.class public Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;
.super Ljava/lang/Object;
.source "ReadingArtist.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;->mId:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;->mName:Ljava/lang/String;

    return-object v0
.end method
