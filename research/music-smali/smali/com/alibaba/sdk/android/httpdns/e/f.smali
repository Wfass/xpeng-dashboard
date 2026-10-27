.class public Lcom/alibaba/sdk/android/httpdns/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/e/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/httpdns/e/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
