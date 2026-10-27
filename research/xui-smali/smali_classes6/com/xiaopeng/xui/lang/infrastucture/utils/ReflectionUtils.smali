.class public Lcom/xiaopeng/xui/lang/infrastucture/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ReflectionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/ReflectionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 26
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 27
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .local v1, "textId":Z
    return v1

    .line 30
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "textId":Z
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 32
    const/4 v1, 0x0

    return v1
.end method

.method public static getIntByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 14
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 15
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .local v1, "textId":I
    return v1

    .line 18
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "textId":I
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 20
    const/4 v1, -0x1

    return v1
.end method

.method public static getLongClickListener(Landroid/view/View;)Landroid/view/View$OnLongClickListener;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 40
    :try_start_0
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "mListenerInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 44
    .local v1, "mListenerInfoField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "mListenerInfo":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 51
    const-string v4, "android.view.View$ListenerInfo"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 52
    .local v4, "listenerInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "mOnLongClickListener"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 53
    .local v5, "mOnLongClickListenerField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnLongClickListener;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v2, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    return-object v2

    .line 61
    .end local v0    # "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "mListenerInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v3    # "mListenerInfo":Ljava/lang/Object;
    .end local v4    # "listenerInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "mOnLongClickListenerField":Ljava/lang/reflect/Field;
    :cond_0
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
