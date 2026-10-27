.class public Lcom/alibaba/sdk/android/httpdns/j/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

.field private final a:Ljava/lang/String;

.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/sdk/android/httpdns/RequestIpType;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:[Ljava/lang/String;

    if-gtz p4, :cond_0

    const/16 p1, 0x3c

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:I

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:I

    return v0
.end method

.method public a()Lcom/alibaba/sdk/android/httpdns/RequestIpType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:Lcom/alibaba/sdk/android/httpdns/RequestIpType;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/a$a;->a:[Ljava/lang/String;

    return-object v0
.end method
