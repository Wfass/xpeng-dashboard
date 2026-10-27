.class Laqk$2;
.super Ljava/lang/Object;
.source "QrCodePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqk;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqk;


# direct methods
.method constructor <init>(Laqk;)V
    .locals 0

    .line 119
    iput-object p1, p0, Laqk$2;->a:Laqk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Laqk$2;->a:Laqk;

    invoke-static {v0}, Laqk;->a(Laqk;)V

    return-void
.end method
