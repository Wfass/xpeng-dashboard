.class final Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASMUtils;
.super Ljava/lang/Object;
.source "ObjectWriterCreatorASMUtils.java"


# static fields
.field static final TYPE_UNSAFE_UTILS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lcom/alibaba/fastjson2/util/JDKUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASMUtils;->TYPE_UNSAFE_UTILS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
