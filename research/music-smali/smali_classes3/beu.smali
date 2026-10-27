.class public Lbeu;
.super Ljava/lang/Object;
.source "RxNetRadioModel.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lbeu$1;

    invoke-direct {v0, p0, p1}, Lbeu$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
