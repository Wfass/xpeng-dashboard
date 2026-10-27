.class public Lawo;
.super Ljava/lang/Object;
.source "HistoryMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawo$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lawo;
    .locals 1

    .line 15
    sget-object v0, Lawo$a;->a:Lawo;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lawo;->a:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lawo;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object v0
.end method
