.class public Lcom/alibaba/sdk/android/httpdns/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final a:Ljava/lang/String;

.field private final a:[I

.field private final a:[Ljava/lang/String;

.field private final b:[I

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->a:J

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->a:[Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->a:[I

    iput-object p6, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->b:[Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->b:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/sdk/android/httpdns/k/b;-><init>(Ljava/lang/String;J[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->a:J

    return-wide v0
.end method

.method public a()[I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->a:[I

    return-object v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b()[I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->b:[I

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/b;->b:[Ljava/lang/String;

    return-object v0
.end method
