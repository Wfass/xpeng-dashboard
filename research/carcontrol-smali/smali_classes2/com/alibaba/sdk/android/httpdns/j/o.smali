.class public Lcom/alibaba/sdk/android/httpdns/j/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/i/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/httpdns/i/j<",
        "Lcom/alibaba/sdk/android/httpdns/j/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/l;
    .locals 0

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/j/l;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/j/o;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/l;

    move-result-object p1

    return-object p1
.end method
