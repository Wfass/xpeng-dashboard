.class Lcom/xiaopeng/datalog/helper/GlobalGsonInstance$Holder;
.super Ljava/lang/Object;
.source "GlobalGsonInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;-><init>(Lcom/xiaopeng/datalog/helper/GlobalGsonInstance$1;)V

    sput-object v0, Lcom/xiaopeng/datalog/helper/GlobalGsonInstance$Holder;->INSTANCE:Lcom/xiaopeng/datalog/helper/GlobalGsonInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
