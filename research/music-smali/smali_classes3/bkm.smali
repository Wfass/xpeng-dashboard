.class public Lbkm;
.super Ljava/lang/Object;
.source "MusicHttpConfig.java"


# static fields
.field private static a:Lbkk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lbkj;

    invoke-direct {v0}, Lbkj;-><init>()V

    sput-object v0, Lbkm;->a:Lbkk;

    return-void
.end method

.method static synthetic a()Lbkk;
    .locals 1

    .line 19
    sget-object v0, Lbkm;->a:Lbkk;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 33
    new-instance v0, Lbkm$1;

    invoke-direct {v0}, Lbkm$1;-><init>()V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    .line 48
    new-instance v0, Lbkm$2;

    invoke-direct {v0}, Lbkm$2;-><init>()V

    invoke-static {v0}, Lbkn;->a(Lbkn$a;)V

    .line 69
    invoke-static {p0}, Lbkn;->a(Landroid/app/Application;)V

    return-void
.end method
