.class Les$2;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Lfb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Les;->a(Landroid/content/Context;Ler;ILjava/util/concurrent/Executor;Leo;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfb<",
        "Les$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leo;


# direct methods
.method constructor <init>(Leo;)V
    .locals 0

    .line 171
    iput-object p1, p0, Les$2;->a:Leo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Les$a;)V
    .locals 1

    .line 174
    iget-object v0, p0, Les$2;->a:Leo;

    invoke-virtual {v0, p1}, Leo;->a(Les$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 171
    check-cast p1, Les$a;

    invoke-virtual {p0, p1}, Les$2;->a(Les$a;)V

    return-void
.end method
