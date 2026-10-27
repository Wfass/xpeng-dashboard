.class Lcom/alibaba/fastjson2/util/TypeUtils$X1;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "X1"
.end annotation


# static fields
.field static final TO_CHARS:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "[B[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 134
    const-class v0, [B

    const-class v1, [C

    .line 135
    sget v2, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v3, 0x9

    if-le v2, v3, :cond_0

    :try_start_0
    const-string v2, "java.lang.StringLatin1"

    .line 137
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 138
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v3

    const-string/jumbo v4, "toChars"

    .line 140
    invoke-static {v1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 139
    invoke-virtual {v3, v2, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v7

    const-string v4, "apply"

    .line 143
    const-class v2, Ljava/util/function/Function;

    .line 146
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-class v2, Ljava/lang/Object;

    const-class v6, Ljava/lang/Object;

    .line 147
    invoke-static {v2, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 149
    invoke-static {v1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    .line 143
    invoke-static/range {v3 .. v8}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 158
    sget-object v0, Lcom/alibaba/fastjson2/util/-$$Lambda$db9sDXmKRh6H9A7pI1RrxRtodpQ;->INSTANCE:Lcom/alibaba/fastjson2/util/-$$Lambda$db9sDXmKRh6H9A7pI1RrxRtodpQ;

    .line 160
    :cond_1
    sput-object v0, Lcom/alibaba/fastjson2/util/TypeUtils$X1;->TO_CHARS:Ljava/util/function/Function;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
