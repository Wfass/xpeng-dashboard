.class public final synthetic L-$$Lambda$aas$tj8IZhs33NwFsoaEyxpxYT3QdtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$aas$tj8IZhs33NwFsoaEyxpxYT3QdtM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$aas$tj8IZhs33NwFsoaEyxpxYT3QdtM;

    invoke-direct {v0}, L-$$Lambda$aas$tj8IZhs33NwFsoaEyxpxYT3QdtM;-><init>()V

    sput-object v0, L-$$Lambda$aas$tj8IZhs33NwFsoaEyxpxYT3QdtM;->INSTANCE:L-$$Lambda$aas$tj8IZhs33NwFsoaEyxpxYT3QdtM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/awt/Font;

    invoke-static {p1}, Laas;->lambda$tj8IZhs33NwFsoaEyxpxYT3QdtM(Ljava/awt/Font;)I

    move-result p1

    return p1
.end method
