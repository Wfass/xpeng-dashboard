.class Laqe$3;
.super Ljava/lang/Object;
.source "QrCodePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqe;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqe;


# direct methods
.method constructor <init>(Laqe;)V
    .locals 0

    .line 115
    iput-object p1, p0, Laqe$3;->a:Laqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 118
    iget-object v0, p0, Laqe$3;->a:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)V

    return-void
.end method
