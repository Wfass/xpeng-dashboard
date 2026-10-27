.class Layw$3;
.super Ljava/lang/Object;
.source "PreloadAllPageAction.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layw;->a(Ljava/util/List;ILayw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layw;


# direct methods
.method constructor <init>(Layw;)V
    .locals 0

    .line 57
    iput-object p1, p0, Layw$3;->a:Layw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PreloadAllPageAction"

    const-string v1, "run: doOnComplete====="

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
