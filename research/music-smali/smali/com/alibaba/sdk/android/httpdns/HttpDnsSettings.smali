.class public Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkDetector;,
        Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkChecker;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkChecker; = null

.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$a;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$a;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings;->a:Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDailyReport(Z)V
    .locals 0

    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings;->a:Z

    return-void
.end method

.method public static setNetworkChecker(Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkChecker;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings;->a:Lcom/alibaba/sdk/android/httpdns/HttpDnsSettings$NetworkChecker;

    return-void
.end method
