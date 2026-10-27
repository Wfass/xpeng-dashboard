.class public Lcom/alibaba/fastjson/JSONValidator;
.super Ljava/lang/Object;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONValidator$Type;
    }
.end annotation


# instance fields
.field private firstChar:C

.field private jsonReader:Lcom/alibaba/fastjson2/u;

.field private type:Lcom/alibaba/fastjson/JSONValidator$Type;

.field private validateResult:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson2/u;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/u;

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 25
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator;

    invoke-static {p0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>(Lcom/alibaba/fastjson2/u;)V

    return-object v0
.end method

.method public static fromUtf8([B)Lcom/alibaba/fastjson/JSONValidator;
    .locals 1

    .line 21
    new-instance v0, Lcom/alibaba/fastjson/JSONValidator;

    invoke-static {p0}, Lcom/alibaba/fastjson2/u;->a([B)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>(Lcom/alibaba/fastjson2/u;)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson/JSONValidator$Type;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator;->validate()Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    return-object v0
.end method

.method public validate()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 34
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->firstChar:C

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->P()V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->close()V

    .line 43
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONValidator;->firstChar:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 44
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Object:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    goto :goto_0

    :cond_1
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 46
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Array:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/JSONValidator$Type;->Value:Lcom/alibaba/fastjson/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->type:Lcom/alibaba/fastjson/JSONValidator$Type;

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    .line 38
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONValidator;->validateResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->close()V

    return v0

    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/u;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->close()V

    .line 41
    throw v0
.end method
