.class Lafc$a;
.super Ljava/lang/Object;
.source "ObjectWriterBaseModule.java"

# interfaces
.implements Laem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final a:Lafc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1508
    new-instance v0, Lafc$a;

    invoke-direct {v0}, Lafc$a;-><init>()V

    sput-object v0, Lafc$a;->a:Lafc$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    return-void
.end method
