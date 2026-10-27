.class public Lcom/google/i18n/phonenumbers/h;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/h$a;,
        Lcom/google/i18n/phonenumbers/h$e;,
        Lcom/google/i18n/phonenumbers/h$b;,
        Lcom/google/i18n/phonenumbers/h$d;,
        Lcom/google/i18n/phonenumbers/h$c;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/regex/Pattern;

.field static final c:Ljava/util/regex/Pattern;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/logging/Logger;

.field private static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/util/regex/Pattern;

.field private static final w:Ljava/util/regex/Pattern;

.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;

.field private static z:Lcom/google/i18n/phonenumbers/h;


# instance fields
.field private final A:Lcom/google/i18n/phonenumbers/d;

.field private final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final C:Lakz;

.field private final D:Lala;

.field private final E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 57
    const-class v0, Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->f:Ljava/util/logging/Logger;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x36

    .line 125
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "9"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->g:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x56

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/google/i18n/phonenumbers/h;->h:Ljava/util/Set;

    .line 133
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/16 v5, 0x34

    .line 134
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x37

    .line 136
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x3e

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->i:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x30

    .line 144
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x31

    .line 145
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v4, 0x31

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x32

    .line 146
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x33

    .line 147
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x35

    .line 149
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x38

    .line 152
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x39

    .line 153
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v10, Ljava/util/HashMap;

    const/16 v11, 0x28

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    const/16 v11, 0x41

    .line 156
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x42

    .line 157
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x43

    .line 158
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x44

    .line 159
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45

    .line 160
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    .line 161
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x47

    .line 162
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    .line 163
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x49

    .line 164
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a

    .line 165
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    .line 166
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    .line 167
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d

    .line 168
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4e

    .line 169
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4f

    .line 170
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x50

    .line 171
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 172
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x52

    .line 173
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 174
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x54

    .line 175
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x55

    .line 176
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x57

    .line 178
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x58

    .line 179
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x59

    .line 180
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 181
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/h;->k:Ljava/util/Map;

    .line 184
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 185
    sget-object v2, Lcom/google/i18n/phonenumbers/h;->k:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/h;->l:Ljava/util/Map;

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v2, 0x2b

    .line 191
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2a

    .line 192
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x23

    .line 193
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/i18n/phonenumbers/h;->j:Ljava/util/Map;

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    sget-object v2, Lcom/google/i18n/phonenumbers/h;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 199
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v0, 0x2d

    .line 204
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0xff0d

    .line 205
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2010

    .line 206
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2011

    .line 207
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2012

    .line 208
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2013

    .line 209
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2014

    .line 210
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2015

    .line 211
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2212

    .line 212
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2f

    .line 213
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0xff0f

    .line 214
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    .line 215
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x3000

    .line 216
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x2060

    .line 217
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 218
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0xff0e

    .line 219
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->m:Ljava/util/Map;

    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 230
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->n:Ljava/util/regex/Pattern;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/i18n/phonenumbers/h;->k:Ljava/util/Map;

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[, \\[\\]]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/i18n/phonenumbers/h;->k:Ljava/util/Map;

    .line 245
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[, \\[\\]]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->o:Ljava/lang/String;

    const-string v0, "[+\uff0b]+"

    .line 248
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->a:Ljava/util/regex/Pattern;

    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    .line 249
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->p:Ljava/util/regex/Pattern;

    const-string v0, "(\\p{Nd})"

    .line 250
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->q:Ljava/util/regex/Pattern;

    const-string v0, "[+\uff0b\\p{Nd}]"

    .line 259
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->r:Ljava/util/regex/Pattern;

    const-string v0, "[\\\\/] *x"

    .line 267
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/util/regex/Pattern;

    const-string v0, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    .line 273
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->c:Ljava/util/regex/Pattern;

    const-string v0, "(?:.*?[A-Za-z]){3}.*"

    .line 277
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->s:Ljava/util/regex/Pattern;

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/i18n/phonenumbers/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->t:Ljava/lang/String;

    const/4 v0, 0x1

    .line 309
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->a(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->u:Ljava/lang/String;

    const/4 v0, 0x0

    .line 310
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->a(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->d:Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/i18n/phonenumbers/h;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->v:Ljava/util/regex/Pattern;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/i18n/phonenumbers/h;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/i18n/phonenumbers/h;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->w:Ljava/util/regex/Pattern;

    const-string v0, "(\\D+)"

    .line 410
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->e:Ljava/util/regex/Pattern;

    const-string v0, "(\\$\\d)"

    .line 416
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->x:Ljava/util/regex/Pattern;

    const-string v0, "\\(?\\$1\\)?"

    .line 426
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/h;->y:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 428
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->z:Lcom/google/i18n/phonenumbers/h;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$b;)Lcom/google/i18n/phonenumbers/h$d;
    .locals 1

    .line 2230
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->a()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2231
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2234
    :cond_0
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->e()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2235
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2237
    :cond_1
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->d()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2238
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->TOLL_FREE:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2240
    :cond_2
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->f()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2241
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->SHARED_COST:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2243
    :cond_3
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->h()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2244
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->VOIP:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2246
    :cond_4
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->g()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2247
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->PERSONAL_NUMBER:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2249
    :cond_5
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->i()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2250
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->PAGER:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2252
    :cond_6
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->j()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2253
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->UAN:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2255
    :cond_7
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->k()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2256
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->VOICEMAIL:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2259
    :cond_8
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->b()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2261
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2262
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2263
    :cond_9
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->c()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2264
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2266
    :cond_a
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2270
    :cond_b
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->s()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2271
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->c()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2272
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->MOBILE:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1

    .line 2274
    :cond_c
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/h$d;

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;)Lcom/google/i18n/phonenumbers/h$e;
    .locals 1

    .line 2558
    sget-object v0, Lcom/google/i18n/phonenumbers/h$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/h$d;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/h$e;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/h$e;
    .locals 3

    .line 2567
    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v0

    .line 2574
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/i$d;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2575
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->a()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/i$d;->a()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/i$d;->a()Ljava/util/List;

    move-result-object v1

    .line 2577
    :goto_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/i$d;->c()Ljava/util/List;

    move-result-object v0

    .line 2579
    sget-object v2, Lcom/google/i18n/phonenumbers/h$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/h$d;

    if-ne p3, v2, :cond_4

    .line 2580
    sget-object p3, Lcom/google/i18n/phonenumbers/h$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/h$d;

    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p3

    invoke-static {p3}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2583
    sget-object p3, Lcom/google/i18n/phonenumbers/h$d;->MOBILE:Lcom/google/i18n/phonenumbers/h$d;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/h$e;

    move-result-object p1

    return-object p1

    .line 2585
    :cond_1
    sget-object p3, Lcom/google/i18n/phonenumbers/h$d;->MOBILE:Lcom/google/i18n/phonenumbers/h$d;

    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p3

    .line 2586
    invoke-static {p3}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/i$d;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2588
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2592
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/i$d;->b()I

    move-result v1

    if-nez v1, :cond_2

    .line 2593
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->a()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$d;->a()Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 2594
    :cond_2
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/i$d;->a()Ljava/util/List;

    move-result-object p2

    .line 2592
    :goto_1
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2597
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2599
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2600
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/i$d;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 2602
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2603
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/i$d;->c()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2604
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, p2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    const/4 p2, 0x0

    .line 2612
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_5

    .line 2613
    sget-object p1, Lcom/google/i18n/phonenumbers/h$e;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$e;

    return-object p1

    .line 2616
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 2619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 2620
    sget-object p1, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/h$e;

    return-object p1

    .line 2623
    :cond_6
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_7

    .line 2625
    sget-object p1, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/h$e;

    return-object p1

    :cond_7
    if-le p2, p1, :cond_8

    .line 2627
    sget-object p1, Lcom/google/i18n/phonenumbers/h$e;->TOO_SHORT:Lcom/google/i18n/phonenumbers/h$e;

    return-object p1

    .line 2628
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p2, p1, :cond_9

    .line 2629
    sget-object p1, Lcom/google/i18n/phonenumbers/h$e;->TOO_LONG:Lcom/google/i18n/phonenumbers/h$e;

    return-object p1

    .line 2632
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v2, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/h$e;

    goto :goto_3

    :cond_a
    sget-object p1, Lcom/google/i18n/phonenumbers/h$e;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$e;

    :goto_3
    return-object p1
.end method

.method private a(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const-string v0, "001"

    .line 1404
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->a(I)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object p1

    goto :goto_0

    .line 1406
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 724
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 728
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 733
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 735
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private a(Lcom/google/i18n/phonenumbers/j$a;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/j$a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2378
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;)Ljava/lang/String;

    move-result-object p1

    .line 2379
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2382
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object v1

    .line 2383
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/i$b;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2384
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/h;->D:Lala;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/i$b;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lala;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2385
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2388
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$b;)Lcom/google/i18n/phonenumbers/h$d;

    move-result-object v1

    sget-object v2, Lcom/google/i18n/phonenumbers/h$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/h$d;

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1006
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1007
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1008
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    if-eqz v3, :cond_0

    .line 1010
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 1012
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 1966
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 1967
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->D:Lala;

    .line 1968
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lala;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1970
    sget-object v1, Lcom/google/i18n/phonenumbers/h$c;->NATIONAL:Lcom/google/i18n/phonenumbers/h$c;

    if-ne p3, v1, :cond_0

    if-eqz p4, :cond_0

    .line 1971
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1972
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1974
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$a;->g()Ljava/lang/String;

    move-result-object p2

    const-string v1, "$CC"

    .line 1975
    invoke-virtual {p2, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1978
    sget-object p4, Lcom/google/i18n/phonenumbers/h;->x:Ljava/util/regex/Pattern;

    invoke-virtual {p4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    .line 1979
    invoke-virtual {p4, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1980
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1983
    :cond_0
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$a;->e()Ljava/lang/String;

    move-result-object p2

    .line 1984
    sget-object p4, Lcom/google/i18n/phonenumbers/h$c;->NATIONAL:Lcom/google/i18n/phonenumbers/h$c;

    if-ne p3, p4, :cond_1

    if-eqz p2, :cond_1

    .line 1986
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_1

    .line 1987
    sget-object p4, Lcom/google/i18n/phonenumbers/h;->x:Ljava/util/regex/Pattern;

    invoke-virtual {p4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    .line 1989
    invoke-virtual {p4, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1991
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1994
    :goto_0
    sget-object p2, Lcom/google/i18n/phonenumbers/h$c;->RFC3966:Lcom/google/i18n/phonenumbers/h$c;

    if-ne p3, p2, :cond_3

    .line 1996
    sget-object p2, Lcom/google/i18n/phonenumbers/h;->p:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1997
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, ""

    .line 1998
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2001
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$c;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1913
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1924
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->w()Ljava/util/List;

    move-result-object v0

    .line 1928
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/h$c;->NATIONAL:Lcom/google/i18n/phonenumbers/h$c;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 1930
    :cond_0
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->w()Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 1929
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->t()Ljava/util/List;

    move-result-object p2

    .line 1931
    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    .line 1934
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 8

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/h;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ \u00a0\\t,]*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|anexo)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/h;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(?:[x\uff58#\uff03~\uff5e]|int|\uff49\uff4e\uff54)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    .line 357
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/h;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[- ]+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/google/i18n/phonenumbers/h;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_0

    const-string p0, "[ \u00a0\\t]*"

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(?:,{2}|;)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xf

    .line 385
    invoke-static {v6}, Lcom/google/i18n/phonenumbers/h;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(?:,)+"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/h;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method

.method static a(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 5

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 801
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 802
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    .line 803
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 805
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 807
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 779
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v2, Lcom/google/i18n/phonenumbers/h;->l:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 783
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {p0}, Lcom/google/i18n/phonenumbers/h;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method private a(ILcom/google/i18n/phonenumbers/h$c;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1894
    sget-object v0, Lcom/google/i18n/phonenumbers/h$1;->b:[I

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$c;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/16 v1, 0x2b

    const/4 v2, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const-string p2, "-"

    .line 1902
    invoke-virtual {p3, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "tel:"

    .line 1903
    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const-string p2, " "

    .line 1899
    invoke-virtual {p3, v2, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    .line 1896
    :cond_2
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 2172
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2173
    sget-object v0, Lcom/google/i18n/phonenumbers/h$c;->RFC3966:Lcom/google/i18n/phonenumbers/h$c;

    if-ne p3, v0, :cond_0

    const-string p2, ";ext="

    .line 2174
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2176
    :cond_0
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->o()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2177
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, " ext. "

    .line 2179
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$a;)V
    .locals 4

    .line 3179
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1

    .line 3180
    invoke-virtual {p1, v1}, Lcom/google/i18n/phonenumbers/j$a;->a(Z)Lcom/google/i18n/phonenumbers/j$a;

    move v0, v1

    .line 3184
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_0

    .line 3185
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    .line 3189
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/j$a;->b(I)Lcom/google/i18n/phonenumbers/j$a;

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/j$a;)V
    .locals 8

    if-eqz p1, :cond_10

    .line 3209
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_f

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3215
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3216
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3218
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p4, :cond_1

    .line 3225
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/h;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 3226
    :cond_0
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/e$a;

    const-string p3, "Missing or invalid default region."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 3231
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/j$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    .line 3235
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_3

    .line 3237
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/j$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    .line 3240
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object p1

    .line 3243
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p4

    move v6, p3

    move-object v7, p5

    .line 3249
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/j$a;)I

    move-result v1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3252
    sget-object v2, Lcom/google/i18n/phonenumbers/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3253
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/e;->a()Lcom/google/i18n/phonenumbers/e$a;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/e$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/e$a;

    if-ne v3, v4, :cond_d

    .line 3254
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3256
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/j$a;)I

    move-result v1

    if-eqz v1, :cond_c

    :goto_1
    if-eqz v1, :cond_4

    .line 3268
    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/h;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 3269
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 3271
    invoke-direct {p0, v1, v0}, Lcom/google/i18n/phonenumbers/h;->a(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object p1

    goto :goto_2

    .line 3276
    :cond_4
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    .line 3278
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->l()I

    move-result p2

    .line 3279
    invoke-virtual {p5, p2}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Lcom/google/i18n/phonenumbers/j$a;

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 3281
    invoke-virtual {p5}, Lcom/google/i18n/phonenumbers/j$a;->n()Lcom/google/i18n/phonenumbers/j$a;

    .line 3284
    :cond_6
    :goto_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const-string v0, "The string supplied is too short to be a phone number."

    const/4 v1, 0x2

    if-lt p2, v1, :cond_b

    if-eqz p1, :cond_8

    .line 3289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3291
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/i$b;Ljava/lang/StringBuilder;)Z

    .line 3295
    invoke-direct {p0, v2, p1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;)Lcom/google/i18n/phonenumbers/h$e;

    move-result-object p1

    .line 3296
    sget-object v3, Lcom/google/i18n/phonenumbers/h$e;->TOO_SHORT:Lcom/google/i18n/phonenumbers/h$e;

    if-eq p1, v3, :cond_8

    sget-object v3, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/h$e;

    if-eq p1, v3, :cond_8

    sget-object v3, Lcom/google/i18n/phonenumbers/h$e;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$e;

    if-eq p1, v3, :cond_8

    if-eqz p3, :cond_7

    .line 3300
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 3301
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/j$a;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    :cond_7
    move-object p4, v2

    .line 3305
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lt p1, v1, :cond_a

    const/16 p2, 0x11

    if-gt p1, p2, :cond_9

    .line 3314
    invoke-static {p4, p5}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j$a;)V

    .line 3315
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Lcom/google/i18n/phonenumbers/j$a;->a(J)Lcom/google/i18n/phonenumbers/j$a;

    return-void

    .line 3311
    :cond_9
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->TOO_LONG:Lcom/google/i18n/phonenumbers/e$a;

    const-string p3, "The string supplied is too long to be a phone number."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    .line 3307
    :cond_a
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->TOO_SHORT_NSN:Lcom/google/i18n/phonenumbers/e$a;

    invoke-direct {p1, p2, v0}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    .line 3285
    :cond_b
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->TOO_SHORT_NSN:Lcom/google/i18n/phonenumbers/e$a;

    invoke-direct {p1, p2, v0}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    .line 3260
    :cond_c
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/e$a;

    const-string p3, "Could not interpret numbers after plus-sign."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    .line 3264
    :cond_d
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/e;->a()Lcom/google/i18n/phonenumbers/e$a;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/e;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    .line 3219
    :cond_e
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/e$a;

    const-string p3, "The string supplied did not seem to be a phone number."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    .line 3210
    :cond_f
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->TOO_LONG:Lcom/google/i18n/phonenumbers/e$a;

    const-string p3, "The string supplied was too long to parse."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    .line 3207
    :cond_10
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/e$a;

    const-string p3, "The phone number supplied was null."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    const-string v0, ";phone-context="

    .line 3323
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v1, v0, 0xf

    .line 3328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 3329
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    const/16 v2, 0x3b

    .line 3333
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_0

    .line 3335
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3337
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v1, "tel:"

    .line 3345
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 3348
    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3352
    :cond_3
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p1, ";isub="

    .line 3357
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 3359
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method private static a(Lcom/google/i18n/phonenumbers/i$d;)Z
    .locals 3

    .line 1067
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$d;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/i$d;->a(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .line 1201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/h;->y:Ljava/util/regex/Pattern;

    .line 1202
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private a(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 2896
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2897
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2898
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    .line 2901
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->q:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2902
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2903
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    .line 2904
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2908
    :cond_0
    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v3

    :cond_1
    return v1
.end method

.method private b(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/j$a;)Z
    .locals 2

    .line 3449
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 3450
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j$a;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 3452
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3453
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static b(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 755
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 758
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 759
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\p{Nd}{1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 796
    invoke-static {p0, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 0

    .line 3043
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/h;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 3045
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/i18n/phonenumbers/h;->a:Ljava/util/regex/Pattern;

    .line 3046
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->E:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Ljava/lang/String;)I
    .locals 3

    .line 2446
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2450
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/i$b;->l()I

    move-result p1

    return p1

    .line 2448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid region code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)Z
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static f(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/j$a;
    .locals 3

    .line 3373
    new-instance v0, Lcom/google/i18n/phonenumbers/j$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/j$a;-><init>()V

    .line 3374
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Lcom/google/i18n/phonenumbers/j$a;

    .line 3375
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/j$a;->a(J)Lcom/google/i18n/phonenumbers/j$a;

    .line 3376
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3377
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/j$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    .line 3379
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3380
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/j$a;->a(Z)Lcom/google/i18n/phonenumbers/j$a;

    .line 3382
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/j$a;->h()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/i18n/phonenumbers/j$a;->b(I)Lcom/google/i18n/phonenumbers/j$a;

    :cond_1
    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/j$a;)I
    .locals 5

    .line 2827
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2830
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 2834
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->m()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "NonMatch"

    .line 2838
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a$a;

    move-result-object p1

    if-eqz p4, :cond_2

    .line 2840
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/j$a;->a(Lcom/google/i18n/phonenumbers/j$a$a;)Lcom/google/i18n/phonenumbers/j$a;

    .line 2842
    :cond_2
    sget-object v2, Lcom/google/i18n/phonenumbers/j$a$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/j$a$a;

    if-eq p1, v2, :cond_5

    .line 2843
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_4

    .line 2848
    invoke-virtual {p0, v0, p3}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 2850
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Lcom/google/i18n/phonenumbers/j$a;

    return p1

    .line 2856
    :cond_3
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/e$a;

    const-string p3, "Country calling code supplied was not recognised."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    .line 2844
    :cond_4
    new-instance p1, Lcom/google/i18n/phonenumbers/e;

    sget-object p2, Lcom/google/i18n/phonenumbers/e$a;->TOO_SHORT_AFTER_IDD:Lcom/google/i18n/phonenumbers/e$a;

    const-string p3, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/e;-><init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz p2, :cond_9

    .line 2862
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->l()I

    move-result p1

    .line 2863
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2865
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2866
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2867
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->a()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v2

    const/4 v3, 0x0

    .line 2869
    invoke-virtual {p0, v4, p2, v3}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/i$b;Ljava/lang/StringBuilder;)Z

    .line 2874
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->C:Lakz;

    invoke-interface {v3, v0, v2, v1}, Lakz;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$d;Z)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->C:Lakz;

    .line 2875
    invoke-interface {v3, v4, v2, v1}, Lakz;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$d;Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2876
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;)Lcom/google/i18n/phonenumbers/h$e;

    move-result-object p2

    sget-object v0, Lcom/google/i18n/phonenumbers/h$e;->TOO_LONG:Lcom/google/i18n/phonenumbers/h$e;

    if-ne p2, v0, :cond_9

    .line 2877
    :cond_7
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_8

    .line 2879
    sget-object p2, Lcom/google/i18n/phonenumbers/j$a$a;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/j$a$a;

    invoke-virtual {p5, p2}, Lcom/google/i18n/phonenumbers/j$a;->a(Lcom/google/i18n/phonenumbers/j$a$a;)Lcom/google/i18n/phonenumbers/j$a;

    .line 2881
    :cond_8
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Lcom/google/i18n/phonenumbers/j$a;

    return p1

    .line 2887
    :cond_9
    invoke-virtual {p5, v1}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Lcom/google/i18n/phonenumbers/j$a;

    return v1
.end method

.method a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6

    .line 2775
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 2780
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    if-gt v2, v0, :cond_2

    .line 2782
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2783
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/h;->B:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2784
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/h$b;
    .locals 3

    .line 3410
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/h;->f(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object p1

    .line 3411
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/h;->f(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object p2

    .line 3413
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3414
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3415
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->NO_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    return-object p1

    .line 3417
    :cond_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result v0

    .line 3418
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 3421
    invoke-virtual {p1, p2}, Lcom/google/i18n/phonenumbers/j$a;->a(Lcom/google/i18n/phonenumbers/j$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3422
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    return-object p1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 3424
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/h;->b(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/j$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3428
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    return-object p1

    .line 3431
    :cond_2
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->NO_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    return-object p1

    .line 3435
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/i18n/phonenumbers/j$a;->a(I)Lcom/google/i18n/phonenumbers/j$a;

    .line 3437
    invoke-virtual {p1, p2}, Lcom/google/i18n/phonenumbers/j$a;->a(Lcom/google/i18n/phonenumbers/j$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3438
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    return-object p1

    .line 3440
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/h;->b(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/j$a;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3441
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->SHORT_NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    return-object p1

    .line 3443
    :cond_5
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->NO_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    return-object p1
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/CharSequence;)Lcom/google/i18n/phonenumbers/h$b;
    .locals 7

    const-string v0, "ZZ"

    .line 3509
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object v1

    .line 3510
    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 3512
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/e;->a()Lcom/google/i18n/phonenumbers/e$a;

    move-result-object v1

    sget-object v2, Lcom/google/i18n/phonenumbers/e$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/e$a;

    if-ne v1, v2, :cond_2

    .line 3516
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/h;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 3518
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3519
    invoke-virtual {p0, p2, v1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;

    move-result-object p2

    .line 3520
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object p1

    .line 3521
    sget-object p2, Lcom/google/i18n/phonenumbers/h$b;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    if-ne p1, p2, :cond_0

    .line 3522
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->NSN_MATCH:Lcom/google/i18n/phonenumbers/h$b;

    :cond_0
    return-object p1

    .line 3528
    :cond_1
    new-instance v6, Lcom/google/i18n/phonenumbers/j$a;

    invoke-direct {v6}, Lcom/google/i18n/phonenumbers/j$a;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, v6

    .line 3529
    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/j$a;)V

    .line 3530
    invoke-virtual {p0, p1, v6}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/h$b;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/e; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 3538
    :catch_1
    :cond_2
    sget-object p1, Lcom/google/i18n/phonenumbers/h$b;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/h$b;

    return-object p1
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/h$e;
    .locals 2

    .line 2689
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;)Ljava/lang/String;

    move-result-object v0

    .line 2690
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result p1

    .line 2697
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/h;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2698
    sget-object p1, Lcom/google/i18n/phonenumbers/h$e;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/h$e;

    return-object p1

    .line 2700
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 2702
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/h;->a(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object p1

    .line 2703
    invoke-direct {p0, v0, p1, p2}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/h$e;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/i$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/i18n/phonenumbers/i$a;"
        }
    .end annotation

    .line 1939
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/i$a;

    .line 1940
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/i$a;->d()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1941
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/h;->D:Lala;

    add-int/lit8 v1, v1, -0x1

    .line 1943
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/i$a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1941
    invoke-virtual {v2, v1}, Lala;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1943
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1944
    :cond_1
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->D:Lala;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/i$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lala;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1945
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method a(I)Lcom/google/i18n/phonenumbers/i$b;
    .locals 2

    .line 2289
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->A:Lcom/google/i18n/phonenumbers/d;

    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/d;->a(I)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/i$d;
    .locals 1

    .line 2186
    sget-object v0, Lcom/google/i18n/phonenumbers/h$1;->c:[I

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$d;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 2209
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->a()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2207
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->k()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2205
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->j()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2203
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->i()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2201
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->g()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2199
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->h()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2197
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->f()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2195
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->b()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2192
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->c()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2190
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->d()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    .line 2188
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$b;->e()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a$a;
    .locals 2

    .line 2930
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2931
    sget-object p1, Lcom/google/i18n/phonenumbers/j$a$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/j$a$a;

    return-object p1

    .line 2934
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2935
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 2936
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2938
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2939
    sget-object p1, Lcom/google/i18n/phonenumbers/j$a$a;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/j$a$a;

    return-object p1

    .line 2942
    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->D:Lala;

    invoke-virtual {v0, p2}, Lala;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 2943
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2944
    invoke-direct {p0, p2, p1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/i18n/phonenumbers/j$a$a;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/j$a$a;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/i18n/phonenumbers/j$a$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/j$a$a;

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    .line 3088
    new-instance v0, Lcom/google/i18n/phonenumbers/j$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/j$a;-><init>()V

    .line 3089
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;)V

    return-object v0
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a;)Ljava/lang/String;
    .locals 3

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1879
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->h()I

    move-result v1

    if-lez v1, :cond_0

    .line 1880
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->h()I

    move-result v1

    new-array v1, v1, [C

    const/16 v2, 0x30

    .line 1881
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1882
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    :cond_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/h$c;)Ljava/lang/String;
    .locals 4

    .line 1254
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->j()Ljava/lang/String;

    move-result-object v0

    .line 1261
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 1265
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1266
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/StringBuilder;)V

    .line 1267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/h$c;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1957
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$a;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 2468
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2470
    sget-object p2, Lcom/google/i18n/phonenumbers/h;->f:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or missing region code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") provided."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 2476
    :cond_1
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/i$b;->n()Ljava/lang/String;

    move-result-object p1

    .line 2478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    const-string p2, "~"

    const-string v0, ""

    .line 2484
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v0, 0x0

    .line 1277
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1278
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result v0

    .line 1279
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    sget-object v2, Lcom/google/i18n/phonenumbers/h$c;->E164:Lcom/google/i18n/phonenumbers/h$c;

    if-ne p2, v2, :cond_0

    .line 1284
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    sget-object p1, Lcom/google/i18n/phonenumbers/h$c;->E164:Lcom/google/i18n/phonenumbers/h$c;

    invoke-direct {p0, v0, p1, p3}, Lcom/google/i18n/phonenumbers/h;->a(ILcom/google/i18n/phonenumbers/h$c;Ljava/lang/StringBuilder;)V

    return-void

    .line 1289
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/h;->d(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1290
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1296
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 1300
    invoke-direct {p0, v0, v2}, Lcom/google/i18n/phonenumbers/h;->a(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object v2

    .line 1301
    invoke-direct {p0, v1, v2, p2}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/i$b;Lcom/google/i18n/phonenumbers/h$c;Ljava/lang/StringBuilder;)V

    .line 1303
    invoke-direct {p0, v0, p2, p3}, Lcom/google/i18n/phonenumbers/h;->a(ILcom/google/i18n/phonenumbers/h$c;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3099
    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/j$a;)V

    return-void
.end method

.method public a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/String;)Z
    .locals 4

    .line 2340
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result v0

    .line 2341
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/h;->a(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "001"

    .line 2343
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2344
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/h;->d(Ljava/lang/String;)I

    move-result p2

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 2349
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;)Ljava/lang/String;

    move-result-object p1

    .line 2350
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$b;)Lcom/google/i18n/phonenumbers/h$d;

    move-result-object p1

    sget-object p2, Lcom/google/i18n/phonenumbers/h$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/h$d;

    if-eq p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/i$d;)Z
    .locals 4

    .line 2299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2300
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$d;->a()Ljava/util/List;

    move-result-object v1

    .line 2301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->C:Lakz;

    invoke-interface {v0, p1, p2, v3}, Lakz;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$d;Z)Z

    move-result p1

    return p1
.end method

.method a(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/i$b;Ljava/lang/StringBuilder;)Z
    .locals 8

    .line 2961
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2962
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 2963
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 2968
    :cond_0
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->D:Lala;

    invoke-virtual {v3, v1}, Lala;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2969
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2970
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->a()Lcom/google/i18n/phonenumbers/i$d;

    move-result-object v3

    .line 2972
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/h;->C:Lakz;

    invoke-interface {v4, p1, v3, v2}, Lakz;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$d;Z)Z

    move-result v4

    .line 2976
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    .line 2977
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/i$b;->r()Ljava/lang/String;

    move-result-object p2

    const/4 v6, 0x1

    if-eqz p2, :cond_4

    .line 2978
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    .line 2979
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 2994
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2995
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, v2, v0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    .line 2996
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/h;->C:Lakz;

    .line 2997
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3, v2}, Lakz;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$d;Z)Z

    move-result p2

    if-nez p2, :cond_2

    return v2

    :cond_2
    if-eqz p3, :cond_3

    if-le v5, v6, :cond_3

    .line 3001
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return v6

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 2981
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/h;->C:Lakz;

    .line 2983
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2982
    invoke-interface {p2, v0, v3, v2}, Lakz;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/i$d;Z)Z

    move-result p2

    if-nez p2, :cond_5

    return v2

    :cond_5
    if-eqz p3, :cond_6

    if-lez v5, :cond_6

    .line 2986
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2987
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    :cond_6
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v6

    :cond_7
    :goto_1
    return v2
.end method

.method b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    .line 2282
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->A:Lcom/google/i18n/phonenumbers/d;

    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/d;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j$a;
    .locals 1

    .line 3118
    new-instance v0, Lcom/google/i18n/phonenumbers/j$a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/j$a;-><init>()V

    .line 3119
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;)V

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .line 2404
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const-string p1, "ZZ"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2405
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method b(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 3019
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->v:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3022
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3024
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 3025
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3028
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 3029
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/j$a;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3130
    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/j$a;)V

    return-void
.end method

.method public b(Lcom/google/i18n/phonenumbers/j$a;)Z
    .locals 1

    .line 2319
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->c(Lcom/google/i18n/phonenumbers/j$a;)Ljava/lang/String;

    move-result-object v0

    .line 2320
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/google/i18n/phonenumbers/j$a;)Ljava/lang/String;
    .locals 4

    .line 2363
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j$a;->a()I

    move-result v0

    .line 2364
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->B:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 2366
    sget-object p1, Lcom/google/i18n/phonenumbers/h;->f:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing/invalid country_code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2369
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 p1, 0x0

    .line 2370
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 2372
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/i18n/phonenumbers/j$a;)Z
    .locals 1

    .line 2530
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->e(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/h$e;

    move-result-object p1

    .line 2531
    sget-object v0, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/h$e;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/h$e;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/h$e;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e(Lcom/google/i18n/phonenumbers/j$a;)Lcom/google/i18n/phonenumbers/h$e;
    .locals 1

    .line 2658
    sget-object v0, Lcom/google/i18n/phonenumbers/h$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/h$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/h$d;)Lcom/google/i18n/phonenumbers/h$e;

    move-result-object p1

    return-object p1
.end method
