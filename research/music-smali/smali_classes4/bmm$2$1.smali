.class Lbmm$2$1;
.super Lbkv;
.source "ProgramDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmm$2;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmm$2;


# direct methods
.method constructor <init>(Lbmm$2;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lbmm$2$1;->a:Lbmm$2;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 227
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;

    invoke-virtual {p0, p1}, Lbmm$2$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;)V
    .locals 1

    .line 230
    new-instance v0, Lbmm$2$1$1;

    invoke-direct {v0, p0, p1}, Lbmm$2$1$1;-><init>(Lbmm$2$1;Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method
