.class public Lcom/alibaba/sdk/android/httpdns/i/f;
.super Lcom/alibaba/sdk/android/httpdns/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/sdk/android/httpdns/i/a<",
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
.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/i/c;Lcom/alibaba/sdk/android/httpdns/i/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/i/c<",
            "TT;>;",
            "Lcom/alibaba/sdk/android/httpdns/i/i<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/httpdns/i/a;-><init>(Lcom/alibaba/sdk/android/httpdns/i/i;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/i/f;->a:Lcom/alibaba/sdk/android/httpdns/i/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/f;->a:Lcom/alibaba/sdk/android/httpdns/i/c;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/i/c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
