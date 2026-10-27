.class public final Lcom/alibaba/sdk/android/httpdns/c/b;
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
    .locals 6

    const-string v0, "203.107.1.1"

    const-string v1, "203.107.1.97"

    const-string v2, "203.107.1.100"

    const-string v3, "203.119.238.240"

    const-string v4, "106.11.25.239"

    const-string v5, "59.82.99.47"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c/b;->a:[Ljava/lang/String;

    const-string v0, "2401:b180:7001::31d"

    const-string v1, "2408:4003:1f40::30a"

    const-string v2, "2401:b180:2000:20::10"

    const-string v3, "2401:b180:2000:30::1c"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c/b;->b:[Ljava/lang/String;

    const-string v0, "resolvers-cn.httpdns.aliyuncs.com"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/httpdns/c/b;->c:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/c/b;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/httpdns/b/b;
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/b/b;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/c/b;->a:[Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/c/b;->a:[I

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/c/b;->b:[Ljava/lang/String;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/c/b;->b:[I

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/b/b;-><init>([Ljava/lang/String;[I[Ljava/lang/String;[ILjava/lang/String;)V

    return-object v6
.end method

.method public static b()Lcom/alibaba/sdk/android/httpdns/b/b;
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/b/b;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/c/b;->c:[Ljava/lang/String;

    sget-object v4, Lcom/alibaba/sdk/android/httpdns/n/a;->a:[I

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/c/b;->d:[Ljava/lang/String;

    const-string v5, ""

    move-object v0, v6

    move-object v2, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/b/b;-><init>([Ljava/lang/String;[I[Ljava/lang/String;[ILjava/lang/String;)V

    return-object v6
.end method
