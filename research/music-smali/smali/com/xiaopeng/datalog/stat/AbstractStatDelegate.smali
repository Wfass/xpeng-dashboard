.class public abstract Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;
.super Ljava/lang/Object;
.source "AbstractStatDelegate.java"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract uploadCan(Ljava/lang/String;)V
.end method

.method public abstract uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V
.end method

.method public abstract uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
.end method

.method public abstract uploadCduWithFiles(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadFiles(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract uploadRecentSystemLog()Ljava/lang/String;
.end method
