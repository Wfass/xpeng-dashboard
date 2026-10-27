.class public Lcom/alibaba/sdk/android/httpdns/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/k/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/alibaba/sdk/android/httpdns/k/a;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/k/a;->a:I

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->getPort(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/a;->a:Ljava/lang/String;

    return-object v0
.end method
