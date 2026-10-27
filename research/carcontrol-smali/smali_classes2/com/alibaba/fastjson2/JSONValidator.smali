.class public Lcom/alibaba/fastjson2/JSONValidator;
.super Ljava/lang/Object;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONValidator$Type;
    }
.end annotation


# instance fields
.field private final jsonReader:Lcom/alibaba/fastjson2/JSONReader;

.field private type:Lcom/alibaba/fastjson2/JSONValidator$Type;

.field private validateResult:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/alibaba/fastjson2/JSONReader;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    return-void
.end method

.method public static from(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONValidator;
    .locals 1

    .line 25
    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONValidator;-><init>(Lcom/alibaba/fastjson2/JSONReader;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONValidator;
    .locals 1

    .line 21
    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator;

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONValidator;-><init>(Lcom/alibaba/fastjson2/JSONReader;)V

    return-object v0
.end method

.method public static fromUtf8([B)Lcom/alibaba/fastjson2/JSONValidator;
    .locals 1

    .line 17
    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator;

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONValidator;-><init>(Lcom/alibaba/fastjson2/JSONReader;)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/JSONValidator$Type;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONValidator;->validate()Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    return-object v0
.end method

.method public validate()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->validateResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 35
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 44
    sget-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Object:Lcom/alibaba/fastjson2/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    goto :goto_0

    :cond_1
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 46
    sget-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Array:Lcom/alibaba/fastjson2/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Value:Lcom/alibaba/fastjson2/JSONValidator$Type;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->validateResult:Ljava/lang/Boolean;

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

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->validateResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    return v0

    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 41
    throw v0
.end method
