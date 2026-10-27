.class public Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;
.super Ljava/lang/Object;
.source "SongBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArtistBean"
.end annotation


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

.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;->this$0:Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;->mId:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;->mName:Ljava/lang/String;

    return-object v0
.end method
