.class public Lcom/alibaba/sdk/android/httpdns/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final a:[Ljava/lang/String;

.field private static final b:[I

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "47.89.80.182"

    const-string v1, "47.246.146.77"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c/c;->a:[Ljava/lang/String;

    const-string v0, "2404:2280:3000::176"

    const-string v1, "2404:2280:3000::188"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c/c;->b:[Ljava/lang/String;

    const-string/jumbo v0, "resolvers-de.httpdns.aliyuncs.com"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/c/c;->c:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c/c;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/b/b;
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/b/b;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/c/c;->a:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/c/c;->a:[I

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/c/c;->b:[Ljava/lang/String;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/c/c;->b:[I

    const-string v5, "de"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/b/b;-><init>([Ljava/lang/String;[I[Ljava/lang/String;[ILjava/lang/String;)V

    return-object v6
.end method

.method public static b()Lcom/alibaba/sdk/android/httpdns/b/b;
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/b/b;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/c/c;->c:[Ljava/lang/String;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/n/a;->a:[I

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/c/c;->d:[Ljava/lang/String;

    const-string v5, "de"

    move-object v0, v6

    move-object v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/b/b;-><init>([Ljava/lang/String;[I[Ljava/lang/String;[ILjava/lang/String;)V

    return-object v6
.end method
