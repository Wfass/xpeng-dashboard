.class public Lbnk;
.super Ljava/lang/Object;
.source "RxMusicPlugins.java"


# static fields
.field private static final a:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lbnk$1;

    invoke-direct {v0}, Lbnk$1;-><init>()V

    sput-object v0, Lbnk;->a:Lio/reactivex/functions/Consumer;

    return-void
.end method

.method public static a()V
    .locals 1

    .line 26
    sget-object v0, Lbnk;->a:Lio/reactivex/functions/Consumer;

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    return-void
.end method
