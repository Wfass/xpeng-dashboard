.class public final Lcom/alibaba/fastjson2/schema/ValidateResult;
.super Ljava/lang/Object;
.source "ValidateResult.java"


# instance fields
.field final args:[Ljava/lang/Object;

.field final cause:Lcom/alibaba/fastjson2/schema/ValidateResult;

.field final format:Ljava/lang/String;

.field message:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public varargs constructor <init>(Lcom/alibaba/fastjson2/schema/ValidateResult;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->success:Z

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->format:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->args:[Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->cause:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 15
    array-length p1, p3

    if-nez p1, :cond_0

    .line 16
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->message:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->success:Z

    .line 22
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->format:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->args:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->cause:Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 25
    array-length p1, p3

    if-nez p1, :cond_0

    .line 26
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->message:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->message:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 36
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->format:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->args:[Ljava/lang/Object;

    array-length v3, v2

    if-lez v3, :cond_1

    .line 37
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->cause:Lcom/alibaba/fastjson2/schema/ValidateResult;

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->cause:Lcom/alibaba/fastjson2/schema/ValidateResult;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/schema/ValidateResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->message:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/schema/ValidateResult;->success:Z

    return v0
.end method
