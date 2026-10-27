.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagGroup;
.super Ljava/lang/Object;
.source "ReMusicTagGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2dL


# instance fields
.field private description:Ljava/lang/String;

.field private labelInfoBos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagGroup;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelInfoBos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagGroup;->labelInfoBos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagGroup;->description:Ljava/lang/String;

    return-void
.end method

.method public setLabelInfoBos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagGroup;->labelInfoBos:Ljava/util/ArrayList;

    return-void
.end method
