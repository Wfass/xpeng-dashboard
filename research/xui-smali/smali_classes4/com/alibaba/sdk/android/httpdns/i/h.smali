.class public Lcom/alibaba/sdk/android/httpdns/i/h;
.super Lcom/alibaba/sdk/android/httpdns/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/sdk/android/httpdns/i/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/alibaba/sdk/android/httpdns/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/httpdns/i/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/i/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/i/c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/alibaba/sdk/android/httpdns/i/c;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/i/h;->a:Lcom/alibaba/sdk/android/httpdns/i/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/httpdns/i/d;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/h;->a:Lcom/alibaba/sdk/android/httpdns/i/c;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/i/c;->a()Lcom/alibaba/sdk/android/httpdns/i/d;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/h;->a:Lcom/alibaba/sdk/android/httpdns/i/c;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/i/c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
