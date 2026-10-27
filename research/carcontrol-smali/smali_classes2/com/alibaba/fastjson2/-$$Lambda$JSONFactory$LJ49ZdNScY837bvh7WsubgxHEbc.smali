.class public final synthetic Lcom/alibaba/fastjson2/-$$Lambda$JSONFactory$LJ49ZdNScY837bvh7WsubgxHEbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/security/PrivilegedAction;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$JSONFactory$LJ49ZdNScY837bvh7WsubgxHEbc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/-$$Lambda$JSONFactory$LJ49ZdNScY837bvh7WsubgxHEbc;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/-$$Lambda$JSONFactory$LJ49ZdNScY837bvh7WsubgxHEbc;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/-$$Lambda$JSONFactory$LJ49ZdNScY837bvh7WsubgxHEbc;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$JSONFactory$LJ49ZdNScY837bvh7WsubgxHEbc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->lambda$static$0()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
