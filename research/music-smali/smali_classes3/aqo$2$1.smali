.class Laqo$2$1;
.super Lbms;
.source "ProgramAisuggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqo$2;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqo$2;

.field private b:Z


# direct methods
.method constructor <init>(Laqo$2;Lbms$a;)V
    .locals 0

    .line 145
    iput-object p1, p0, Laqo$2$1;->a:Laqo$2;

    invoke-direct {p0, p2}, Lbms;-><init>(Lbms$a;)V

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Laqo$2$1;->b:Z

    return-void
.end method


# virtual methods
.method public a(ZIIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-super/range {p0 .. p5}, Lbms;->a(ZIIILjava/util/List;)V

    .line 152
    iget-boolean p1, p0, Laqo$2$1;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Laqo$2$1;->b:Z

    .line 154
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
