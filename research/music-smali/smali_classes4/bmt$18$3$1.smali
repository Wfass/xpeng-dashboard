.class Lbmt$18$3$1;
.super Lbms;
.source "ProgramModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt$18$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmt$18$3;


# direct methods
.method constructor <init>(Lbmt$18$3;Lbms$a;)V
    .locals 0

    .line 1010
    iput-object p1, p0, Lbmt$18$3$1;->a:Lbmt$18$3;

    invoke-direct {p0, p2}, Lbms;-><init>(Lbms$a;)V

    return-void
.end method


# virtual methods
.method public a(ZIIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 1014
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$c;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/b$c;-><init>()V

    .line 1015
    invoke-virtual {p0}, Lbmt$18$3$1;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$c;->a(I)V

    .line 1016
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1017
    invoke-super/range {p0 .. p5}, Lbms;->a(ZIIILjava/util/List;)V

    return-void
.end method
