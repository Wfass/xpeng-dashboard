.class final Lcom/alibaba/fastjson2/schema/Any;
.super Lcom/alibaba/fastjson2/schema/JSONSchema;
.source "Any.java"


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

.field public static final NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/alibaba/fastjson2/schema/Any;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/schema/Any;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/schema/Any;->INSTANCE:Lcom/alibaba/fastjson2/schema/Any;

    .line 6
    new-instance v1, Lcom/alibaba/fastjson2/schema/Not;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/alibaba/fastjson2/schema/Not;-><init>(Lcom/alibaba/fastjson2/schema/JSONSchema;[Lcom/alibaba/fastjson2/schema/JSONSchema$Type;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/alibaba/fastjson2/schema/Any;->NOT_ANY:Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson2/schema/JSONSchema;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/schema/JSONSchema$Type;
    .locals 1

    .line 14
    sget-object v0, Lcom/alibaba/fastjson2/schema/JSONSchema$Type;->Any:Lcom/alibaba/fastjson2/schema/JSONSchema$Type;

    return-object v0
.end method

.method public validate(Ljava/lang/Object;)Lcom/alibaba/fastjson2/schema/ValidateResult;
    .locals 0

    .line 19
    sget-object p1, Lcom/alibaba/fastjson2/schema/Any;->SUCCESS:Lcom/alibaba/fastjson2/schema/ValidateResult;

    return-object p1
.end method
