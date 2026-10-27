.class Lazv$4;
.super Ljava/lang/Object;
.source "LocalLoveOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazv;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lazv;


# direct methods
.method constructor <init>(Lazv;Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lazv$4;->b:Lazv;

    iput-object p2, p0, Lazv$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lazv$4;->b:Lazv;

    iget-object v1, p0, Lazv$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lazv;->d(Ljava/lang/String;)V

    return-void
.end method
