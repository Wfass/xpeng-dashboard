.class final Lapz$2;
.super Ljava/lang/Object;
.source "BizHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapz;->b(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Lapz$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapz$a;

.field final synthetic b:Laqg;


# direct methods
.method constructor <init>(Lapz$a;Laqg;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lapz$2;->a:Lapz$a;

    iput-object p2, p0, Lapz$2;->b:Laqg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 105
    iget-object v0, p0, Lapz$2;->a:Lapz$a;

    iget-object v1, p0, Lapz$2;->b:Laqg;

    invoke-virtual {v0, v1}, Lapz$a;->a(Ljava/lang/Object;)V

    return-void
.end method
