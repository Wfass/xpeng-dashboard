.class public final synthetic Landroid/view/-$$Lambda$View$1NO5wu-sdREz2tbj5MBf4s3k9go;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroid/view/displayhash/DisplayHashResultCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/view/displayhash/DisplayHashResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$View$1NO5wu-sdREz2tbj5MBf4s3k9go;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/-$$Lambda$View$1NO5wu-sdREz2tbj5MBf4s3k9go;->f$1:Landroid/view/displayhash/DisplayHashResultCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/view/-$$Lambda$View$1NO5wu-sdREz2tbj5MBf4s3k9go;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/view/-$$Lambda$View$1NO5wu-sdREz2tbj5MBf4s3k9go;->f$1:Landroid/view/displayhash/DisplayHashResultCallback;

    invoke-static {v0, v1, p1}, Landroid/view/View;->lambda$generateDisplayHash$6(Ljava/util/concurrent/Executor;Landroid/view/displayhash/DisplayHashResultCallback;Landroid/os/Bundle;)V

    return-void
.end method
