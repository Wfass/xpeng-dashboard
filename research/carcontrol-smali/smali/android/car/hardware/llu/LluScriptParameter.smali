.class public Landroid/car/hardware/llu/LluScriptParameter;
.super Ljava/lang/Object;
.source "LluScriptParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/llu/LluScriptParameter$Builder;
    }
.end annotation


# instance fields
.field private mData:[I


# direct methods
.method private constructor <init>([I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroid/car/hardware/llu/LluScriptParameter;->mData:[I

    return-void
.end method

.method synthetic constructor <init>([ILandroid/car/hardware/llu/LluScriptParameter$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/car/hardware/llu/LluScriptParameter;-><init>([I)V

    return-void
.end method


# virtual methods
.method public getData()[I
    .locals 1

    .line 11
    iget-object v0, p0, Landroid/car/hardware/llu/LluScriptParameter;->mData:[I

    return-object v0
.end method
