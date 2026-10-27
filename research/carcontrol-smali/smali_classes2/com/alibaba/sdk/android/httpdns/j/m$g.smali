.class Lcom/alibaba/sdk/android/httpdns/j/m$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/j/m;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/j/m;

.field final synthetic a:Z


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/j/m;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/m$g;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    iput-boolean p2, p0, Lcom/alibaba/sdk/android/httpdns/j/m$g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/m$g;->a:Lcom/alibaba/sdk/android/httpdns/j/m;

    iget-boolean v1, p0, Lcom/alibaba/sdk/android/httpdns/j/m$g;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/httpdns/j/m;->a(Lcom/alibaba/sdk/android/httpdns/j/m;Z)V

    return-void
.end method
