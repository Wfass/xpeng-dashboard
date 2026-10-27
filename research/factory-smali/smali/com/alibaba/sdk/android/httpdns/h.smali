.class public Lcom/alibaba/sdk/android/httpdns/h;
.super Ljava/lang/Exception;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/h;->b:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/h;->b:I

    return v0
.end method
