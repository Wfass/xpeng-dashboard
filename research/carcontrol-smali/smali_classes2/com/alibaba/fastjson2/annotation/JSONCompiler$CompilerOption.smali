.class public final enum Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;
.super Ljava/lang/Enum;
.source "JSONCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/annotation/JSONCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompilerOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

.field public static final enum DEFAULT:Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

.field public static final enum LAMBDA:Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;


# direct methods
.method private static synthetic $values()[Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    .line 13
    sget-object v1, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->DEFAULT:Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->LAMBDA:Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->DEFAULT:Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    .line 15
    new-instance v0, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    const-string v1, "LAMBDA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->LAMBDA:Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    .line 13
    invoke-static {}, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->$values()[Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->$VALUES:[Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;
    .locals 1

    .line 13
    const-class v0, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;
    .locals 1

    .line 13
    sget-object v0, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->$VALUES:[Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    return-object v0
.end method
