.class final Lbeu$1;
.super Lbnl;
.source "RxNetRadioModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbeu;->a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbnl<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lbeu$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lbeu$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lbnl;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lbnl$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbnl$a<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lbeu$1$1;

    invoke-direct {v0, p0}, Lbeu$1$1;-><init>(Lbeu$1;)V

    return-object v0
.end method

.method protected a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
            ">;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {}, Lbew;->a()Lbew;

    move-result-object v0

    iget-object v1, p0, Lbeu$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lbeu$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lbew;->b(Ljava/lang/String;Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method
